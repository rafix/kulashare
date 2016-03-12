jQuery(document).ready(function() {
    jQuery('body').midgardCreate({
        url: function() {
            if (this.id) {
                if (this.id.charAt(0) == "<") {
                    return cmfCreatePutDocument + this.id.substring(1, this.id.length - 1);
                }
                return cmfCreatePutDocument +  this.id;
            }
            return cmfCreatePutDocument;
        },
        workflows: {
            url: function(model) {
                return cmfCreateWorkflows + model.getSubjectUri();
            }
        },
        stanbolUrl: cmfCreateStanbolUrl,
        tags: true
    });

    jQuery('body').midgardCreate('configureEditor', 'default', 'halloWidget', {
        plugins: {
            'halloformat': {'formattings': {'strikeThrough': false, 'underline': false}},
            'halloblock': {},
            'hallolists': {'lists': {'ordered': false}},
            'hallojustify': {},
            'halloimage': {
                search: function (query, limit, offset, successCallback) {
                    limit = limit || 8;
                    offset = offset || 0;
                    jQuery.ajax({
                        type: "GET",
                        url: cmfCreateImageSearch,
                        data: "query="+query+"&offset="+offset+"&limit="+limit,
                        success: successCallback
                    });
                },
                // TODO: this only brings an empty suggestions tab instead of calling the function
                // suggestions: function(tags, limit, offset, successCallback) {
                //     limit = limit || 8;
                //     offset = offset || 0;
                //     return jQuery.ajax({
                //         type: "GET",
                //         url: "/app_dev.php/symfony-cmf/vie/assets/list/",
                //         data: "tags=" + tags + "&offset=" + offset + "&limit=" + limit,
                //         success: successCallback
                //     });
                // },
                uploadUrl: cmfCreateImageUpload,
                'vie': this.vie
            },
            'hallolink': { 'relatedUrl': cmfCreateLinkRelatedPath },
            'hallooverlay': {},
            'halloindicator': {}
        },
        toolbarState: cmfCreateHalloFixedToolbar,
        parentElement: cmfCreateHalloParentElement
    });
    
    
    jQuery('body').bind('halloenabled', null, function () {
        $('.create-ui-toolbar-wrapper')
            .addClass('editing');
    });

    jQuery('body').bind('hallodisabled', null, function () {
        $('.create-ui-toolbar-wrapper')
            .removeClass('editing');
    });
});

###
Hallo {{ VERSION }} - a rich text editing jQuery UI widget
(c) 2011 Henri Bergius, IKS Consortium
Hallo may be freely distributed under the MIT license
http://hallojs.org
###
((jQuery) ->
  # Hallo provides a jQuery UI widget `hallo`. Usage:
  #
  #     jQuery('p').hallo();
  #
  # Getting out of the editing state:
  #
  #     jQuery('p').hallo({editable: false});
  #
  # When content is in editable state, users can just click on
  # an editable element in order to start modifying it. This
  # relies on browser having support for the HTML5 contentEditable
  # functionality, which means that some mobile browsers are not
  # supported.
  #
  # If plugins providing toolbar buttons have been enabled for
  # Hallo, then a toolbar will be rendered when an area is active.
  #
  # ## Toolbar
  #
  # Hallo ships with different toolbar options, including:
  #
  # * `halloToolbarContextual`: a toolbar that appears as a popover
  #   dialog when user makes a selection
  # * `halloToolbarFixed`: a toolbar that is constantly visible above
  #   the editable area when the area is activated
  #
  # The toolbar can be defined by the `toolbar` configuration key,
  # which has to conform to the toolbar widget being used.
  #
  # Just like with plugins, it is possible to use Hallo with your own
  # custom toolbar implementation.
  #
  # ## Events
  #
  # The Hallo editor provides several jQuery events that web
  # applications can use for integration:
  #
  # ### Activated
  #
  # When user activates an editable (usually by clicking or tabbing
  # to an editable element), a `halloactivated` event will be fired.
  #
  #     jQuery('p').on('halloactivated', function() {
  #         console.log("Activated");
  #     });
  #
  # ### Deactivated
  #
  # When user gets out of an editable element, a `hallodeactivated`
  # event will be fired.
  #
  #     jQuery('p').on('hallodeactivated', function() {
  #         console.log("Deactivated");
  #     });
  #
  # ### Modified
  #
  # When contents in an editable have been modified, a
  # `hallomodified` event will be fired.
  #
  #     jQuery('p').on('hallomodified', function(event, data) {
  #         console.log("New contents are " + data.content);
  #     });
  #
  # ### Restored
  #
  # When contents are restored through calling
  # `.hallo("restoreOriginalContent")` or the user pressing ESC while
  # the cursor is in the editable element, a 'hallorestored' event will
  # be fired.
  #
  #     jQuery('p').on('hallorestored', function(event, data) {
  #         console.log("The thrown contents are " + data.thrown);
  #         console.log("The restored contents are " + data.content);
  #     });
  #
  jQuery.widget 'IKS.hallo',
    toolbar: null
    bound: false
    originalContent: ''
    previousContent: ''
    uuid: ''
    selection: null
    _keepActivated: false
    originalHref: null

    options:
      editable: true
      plugins: {}
      toolbar: 'halloToolbarContextual'
      parentElement: 'body'
      buttonCssClass: null
      toolbarCssClass: null
      toolbarPositionAbove: false
      toolbarOptions: {}
      placeholder: ''
      forceStructured: true
      checkTouch: true
      touchScreen: null

    _create: ->
      @id = @_generateUUID()

      @checkTouch() if @options.checkTouch and @options.touchScreen is null

      for plugin, options of @options.plugins
        options = {} unless jQuery.isPlainObject options
        jQuery.extend options,
          editable: this
          uuid: @id
          buttonCssClass: @options.buttonCssClass
        jQuery(@element)[plugin] options

      @element.one 'halloactivated', =>
        # We will populate the toolbar the first time this
        # editable is activated. This will make multiple
        # Hallo instances on same page load much faster
        @_prepareToolbar()

      @originalContent = @getContents()

    _init: ->
      if @options.editable
        @enable()
      else
        @disable()

    destroy: ->
      @disable()

      if @toolbar
        @toolbar.remove()
        @element[@options.toolbar] 'destroy'

      for plugin, options of @options.plugins
        jQuery(@element)[plugin] 'destroy'

      jQuery.Widget::destroy.call @

    # Disable an editable
    disable: ->
      @element.attr "contentEditable", false
      @element.off "focus", @_activated
      @element.off "blur", @_deactivated
      @element.off "keyup paste change", @_checkModified
      @element.off "keyup", @_keys
      @element.off "keyup mouseup", @_checkSelection
      @bound = false

      jQuery(@element).removeClass 'isModified'
      jQuery(@element).removeClass 'inEditMode'

      @element.parents('a').addBack().each (idx, elem) =>
        element = jQuery elem
        return unless element.is 'a'
        return unless @originalHref
        element.attr 'href', @originalHref

      @_trigger "disabled", null

    # Enable an editable
    enable: ->
      @element.parents('a[href]').addBack().each (idx, elem) =>
        element = jQuery elem
        return unless element.is 'a[href]'
        @originalHref = element.attr 'href'
        element.removeAttr 'href'

      @element.attr "contentEditable", true

      unless jQuery.parseHTML(@element.html())
        @element.html this.options.placeholder
        jQuery(@element).addClass 'inPlaceholderMode'
        @element.css
          'min-width': @element.innerWidth()
          'min-height': @element.innerHeight()

      unless @bound
        @element.on "focus", this, @_activated
        @element.on "blur", this, @_deactivated
        @element.on "keyup paste change", this, @_checkModified
        @element.on "keyup", this, @_keys
        @element.on "keyup mouseup", this, @_checkSelection
        @bound = true

      @_forceStructured() if @options.forceStructured

      @_trigger "enabled", null

    # Activate an editable for editing
    activate: ->
      @element.focus()

    # Checks whether the editable element contains the current selection
    containsSelection: ->
      range = @getSelection()
      return @element.has(range.startContainer).length > 0

    # Only supports one range for now (i.e. no multiselection)
    getSelection: ->
      sel = rangy.getSelection()
      range = null
      if sel.rangeCount > 0
        range = sel.getRangeAt(0)
      else
        range = rangy.createRange()
      return range

    restoreSelection: (range) ->
      sel = rangy.getSelection()
      sel.setSingleRange(range)

    replaceSelection: (cb) ->
      if navigator.appName is 'Microsoft Internet Explorer'
        t = document.selection.createRange().text
        r = document.selection.createRange()
        r.pasteHTML(cb(t))
      else
        sel = window.getSelection()
        range = sel.getRangeAt(0)
        newTextNode = document.createTextNode(cb(range.extractContents()))
        range.insertNode(newTextNode)
        range.setStartAfter(newTextNode)
        sel.removeAllRanges()
        sel.addRange(range)

    removeAllSelections: () ->
      if navigator.appName is 'Microsoft Internet Explorer'
        range.empty()
      else
        window.getSelection().removeAllRanges()

    getPluginInstance: (plugin) ->
      # jQuery UI 1.10 or newer
      instance = jQuery(@element).data "IKS-#{plugin}"
      return instance if instance
      # Older jQuery UI
      instance = jQuery(@element).data plugin
      return instance if instance
      throw new Error "Plugin #{plugin} not found"

    # Get contents of an editable as HTML string
    getContents: ->
      for plugin of @options.plugins
        instance = @getPluginInstance(plugin)
        continue unless instance
        cleanup = instance.cleanupContentClone
        continue unless jQuery.isFunction cleanup
        jQuery(@element)[plugin] 'cleanupContentClone', @element
      @element.html()

    # Set the contents of an editable
    setContents: (contents) ->
      @element.html contents

    # Check whether the editable has been modified
    isModified: ->
      @previousContent = @originalContent unless @previousContent
      @previousContent isnt @getContents()

    # Set the editable as unmodified
    setUnmodified: ->
      jQuery(@element).removeClass 'isModified'
      @previousContent = @getContents()

    # Set the editable as modified
    setModified: ->
      jQuery(@element).addClass 'isModified'
      @._trigger 'modified', null,
        editable: @
        content: @getContents()

    # Restore the content original
    restoreOriginalContent: () ->
      @element.html(@originalContent)

    # Execute a contentEditable command
    execute: (command, value) ->
      if document.execCommand command, false, value
        @element.trigger "change"

    protectFocusFrom: (el) ->
      el.on "mousedown", (event) =>
        event.preventDefault()
        @_protectToolbarFocus = true
        setTimeout =>
          @_protectToolbarFocus = false
        , 300

    keepActivated: (@_keepActivated) ->

    _generateUUID: ->
      S4 = ->
        ((1 + Math.random()) * 0x10000|0).toString(16).substring 1
      "#{S4()}#{S4()}-#{S4()}-#{S4()}-#{S4()}-#{S4()}#{S4()}#{S4()}"

    _prepareToolbar: ->
      @toolbar = jQuery('<div class="hallotoolbar"></div>').hide()
      @toolbar.addClass @options.toolbarCssClass if @options.toolbarCssClass

      defaults =
        editable: @
        parentElement: @options.parentElement
        toolbar: @toolbar
        positionAbove: @options.toolbarPositionAbove

      toolbarOptions = jQuery.extend({}, defaults, @options.toolbarOptions)
      @element[@options.toolbar] toolbarOptions

      for plugin of @options.plugins
        instance = @getPluginInstance(plugin)
        continue unless instance
        populate = instance.populateToolbar
        continue unless jQuery.isFunction populate
        @element[plugin] 'populateToolbar', @toolbar

      @element[@options.toolbar] 'setPosition'
      @protectFocusFrom @toolbar

    changeToolbar: (element, toolbar, hide = false) ->
      originalToolbar = @options.toolbar

      @options.parentElement = element
      @options.toolbar = toolbar if toolbar

      return unless @toolbar
      @element[originalToolbar] 'destroy'
      do @toolbar.remove
      do @_prepareToolbar

      @toolbar.hide() if hide

    _checkModified: (event) ->
      widget = event.data
      widget.setModified() if widget.isModified()

    _keys: (event) ->
      widget = event.data
      if event.keyCode == 27
        old = widget.getContents()
        widget.restoreOriginalContent(event)
        widget._trigger "restored", null,
          editable: widget
          content: widget.getContents()
          thrown: old

        widget.turnOff()

    _rangesEqual: (r1, r2) ->
      return false unless r1.startContainer is r2.startContainer
      return false unless r1.startOffset is r2.startOffset
      return false unless r1.endContainer is r2.endContainer
      return false unless r1.endOffset is r2.endOffset
      true

    # Check if some text is selected, and if this selection has changed.
    # If it changed, trigger the "halloselected" event
    _checkSelection: (event) ->
      if event.keyCode == 27
        return

      widget = event.data

      # The mouseup event triggers before the text selection is updated.
      # I did not find a better solution than setTimeout in 0 ms
      setTimeout ->
        sel = widget.getSelection()
        if widget._isEmptySelection(sel) or widget._isEmptyRange(sel)
          if widget.selection
            widget.selection = null
            widget._trigger "unselected", null,
              editable: widget
              originalEvent: event
          return

        if !widget.selection or not widget._rangesEqual sel, widget.selection
          widget.selection = sel.cloneRange()
          widget._trigger "selected", null,
            editable: widget
            selection: widget.selection
            ranges: [widget.selection]
            originalEvent: event
      , 0

    _isEmptySelection: (selection) ->
      if selection.type is "Caret"
        return true
      return false

    _isEmptyRange: (range) ->
      if range.collapsed
        return true
      if range.isCollapsed
        return range.isCollapsed() if typeof range.isCollapsed is 'function'
        return range.isCollapsed

      return false

    turnOn: () ->
      if this.getContents() is this.options.placeholder
        this.setContents ''

      jQuery(@element).removeClass 'inPlaceholderMode'
      jQuery(@element).addClass 'inEditMode'
      @_trigger "activated", null, @

    turnOff: () ->
      jQuery(@element).removeClass 'inEditMode'
      @_trigger "deactivated", null, @

      unless @getContents()
        jQuery(@element).addClass 'inPlaceholderMode'
        @setContents @options.placeholder

    _activated: (event) ->
      event.data.turnOn()

    _deactivated: (event) ->
      return if event.data._keepActivated

      unless event.data._protectToolbarFocus is true
        event.data.turnOff()
      else
        setTimeout ->
          jQuery(event.data.element).focus()
        , 300

    _forceStructured: (event) ->
      try
        document.execCommand 'styleWithCSS', 0, false
      catch e
        try
          document.execCommand 'useCSS', 0, true
        catch e
          try
            document.execCommand 'styleWithCSS', false, false
          catch e

    checkTouch: ->
      @options.touchScreen = !!('createTouch' of document)

)(jQuery)

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
#
#     Fixed toolbar plugin
((jQuery) ->
  jQuery.widget 'IKS.halloToolbarFixed',
    toolbar: null

    options:
      parentElement: 'body'
      editable: null
      toolbar: null

      affix: true
      affixTopOffset: 2

    _create: ->
      @toolbar = @options.toolbar
      @toolbar.show()

      jQuery(@options.parentElement).append @toolbar

      @_bindEvents()

      jQuery(window).resize (event) =>
        @setPosition()
      jQuery(window).scroll (event) =>
        @setPosition()

      # Make sure the toolbar has not got the full width of the editable
      # element when floating is set to true
      if @options.parentElement is 'body'
        el = jQuery(@element)
        widthToAdd = parseFloat el.css('padding-left')
        widthToAdd += parseFloat el.css('padding-right')
        widthToAdd += parseFloat el.css('border-left-width')
        widthToAdd += parseFloat el.css('border-right-width')
        widthToAdd += (parseFloat el.css('outline-width')) * 2
        widthToAdd += (parseFloat el.css('outline-offset')) * 2
        jQuery(@toolbar).css "width", el.width() + widthToAdd

    _getPosition: (event, selection) ->
      return unless event
      width = parseFloat @element.css 'outline-width'
      offset = width + parseFloat @element.css 'outline-offset'
      return position =
        top: @element.offset().top - @toolbar.outerHeight() - offset
        left: @element.offset().left - offset

    _getCaretPosition: (range) ->
      tmpSpan = jQuery "<span/>"
      newRange =rangy.createRange()
      newRange.setStart range.endContainer, range.endOffset
      newRange.insertNode tmpSpan.get 0

      position =
        top: tmpSpan.offset().top
        left: tmpSpan.offset().left
      tmpSpan.remove()

      return position

    setPosition: ->
      return unless @options.parentElement is 'body'
      @toolbar.css 'position', 'absolute'
      @toolbar.css 'top', @element.offset().top - @toolbar.outerHeight()

      if @options.affix
        scrollTop = jQuery(window).scrollTop()
        offset = @element.offset()
        height = @element.height()
        topOffset = @options.affixTopOffset
        elementTop = offset.top - (@toolbar.height() + @options.affixTopOffset)
        elementBottom = (height - topOffset) + (offset.top - @toolbar.height())
        
        if scrollTop > elementTop && scrollTop < elementBottom
          @toolbar.css('position', 'fixed')
          @toolbar.css('top', @options.affixTopOffset)
      else

      @toolbar.css 'left', @element.offset().left - 2

    _updatePosition: (position) ->
      return

    _bindEvents: ->
      # catch activate -> show
      @element.on 'halloactivated', (event, data) =>
        @setPosition()
        @toolbar.show()

      # catch deactivate -> hide
      @element.on 'hallodeactivated', (event, data) =>
        @toolbar.hide()
) jQuery

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget 'IKS.hallobutton',
    button: null
    isChecked: false

    options:
      uuid: ''
      label: null
      icon: null
      editable: null
      command: null
      commandValue: null
      queryState: true
      cssClass: null

    _create: ->
      # By default the icon is icon-command, but this doesn't
      # always match with
      # <http://fortawesome.github.io/Font-Awesome/icons/>
      @options.icon ?= "fa-#{@options.label.toLowerCase()}"

      id = "#{@options.uuid}-#{@options.label}"
      opts = @options
      @button = @_createButton id, opts.command, opts.label, opts.icon
      @element.append @button
      @button.addClass @options.cssClass if @options.cssClass
      @button.addClass 'btn-large' if @options.editable.options.touchScreen
      @button.data 'hallo-command', @options.command
      if @options.commandValue
        @button.data 'hallo-command-value', @options.commandValue
        
      hoverclass = 'ui-state-hover'
      @button.on 'mouseenter', (event) =>
        if @isEnabled()
          @button.addClass hoverclass
      @button.on 'mouseleave', (event) =>
        @button.removeClass hoverclass

    _init: ->
      @button = @_prepareButton() unless @button
      @element.append @button

      if @options.queryState is true
        queryState = (event) =>
          return unless @options.command
          try
            if @options.commandValue
              value = document.queryCommandValue @options.command
              compared = value.match(new RegExp(@options.commandValue,"i"))
              @checked(if compared then true else false)
            else
              @checked document.queryCommandState @options.command
          catch e
            return
      else
        queryState = @options.queryState

      if @options.command
        @button.on 'click', (event) =>
          if @options.commandValue
            @options.editable.execute @options.command, @options.commandValue
          else
            @options.editable.execute @options.command
          if typeof queryState is 'function'
            queryState()
          return false

      return unless @options.queryState

      editableElement = @options.editable.element
      events = 'keyup paste change mouseup hallomodified'
      editableElement.on events, queryState
      editableElement.on 'halloenabled', =>
        editableElement.on events, queryState
      editableElement.on 'hallodisabled', =>
        editableElement.off events, queryState

    enable: ->
      @button.removeAttr 'disabled'

    disable: ->
      @button.attr 'disabled', 'true'

    isEnabled: ->
      return @button.attr('disabled') != 'true'

    refresh: ->
      if @isChecked
        @button.addClass 'ui-state-active'
      else
        @button.removeClass 'ui-state-active'

    checked: (checked) ->
      @isChecked = checked
      @refresh()

    _createButton: (id, command, label, icon) ->
      classes = [
        'ui-button'
        'ui-widget'
        'ui-state-default'
        'ui-corner-all'
        'ui-button-text-only'
        "#{command}_button"
      ]
      jQuery "<button id=\"#{id}\"
        class=\"#{classes.join(' ')}\" title=\"#{label}\">
          <span class=\"ui-button-text\">
            <i class=\"fa #{icon}\"></i>
          </span>
        </button>"


  jQuery.widget 'IKS.hallobuttonset',
    buttons: null
    _create: ->
      @element.addClass 'ui-buttonset'

    _init: ->
      @refresh()

    refresh: ->
      rtl = @element.css('direction') == 'rtl'
      @buttons = @element.find '.ui-button'
      @buttons.removeClass 'ui-corner-all ui-corner-left ui-corner-right'
      if rtl
        @buttons.filter(':first').addClass 'ui-corner-right'
        @buttons.filter(':last').addClass 'ui-corner-left'
      else
        @buttons.filter(':first').addClass 'ui-corner-left'
        @buttons.filter(':last').addClass 'ui-corner-right'
)(jQuery)

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget 'IKS.hallodropdownbutton',
    button: null

    options:
      uuid: ''
      label: null
      icon: null
      editable: null
      target: ''
      cssClass: null

    _create: ->
      @options.icon ?= "fa-#{@options.label.toLowerCase()}"

    _init: ->
      target = jQuery @options.target
      target.css 'position', 'absolute'
      target.addClass 'dropdown-menu'

      target.hide()
      @button = @_prepareButton() unless @button

      @button.on 'click', =>
        if target.hasClass 'open'
          @_hideTarget()
          return
        @_showTarget()

      target.on 'click', =>
        @_hideTarget()

      @options.editable.element.on 'hallodeactivated', =>
        @_hideTarget()

      @element.append @button

    _showTarget: ->
      target = jQuery @options.target
      @_updateTargetPosition()
      target.addClass 'open'
      target.show()
    
    _hideTarget: ->
      target = jQuery @options.target
      target.removeClass 'open'
      target.hide()

    _updateTargetPosition: ->
      target = jQuery @options.target
      {top, left} = @button.position()
      top += @button.outerHeight()
      target.css 'top', top
      target.css 'left', left - 20

    _prepareButton: ->
      id = "#{@options.uuid}-#{@options.label}"
      classes = [
        'ui-button'
        'ui-widget'
        'ui-state-default'
        'ui-corner-all'
        'ui-button-text-only'
      ]
      buttonEl = jQuery "<button id=\"#{id}\"
       class=\"#{classes.join(' ')}\" title=\"#{@options.label}\">
         <span class=\"ui-button-text\">
           <i class=\"fa #{@options.icon}\"></i>
         </span>
       </button>"
      buttonEl.addClass @options.cssClass if @options.cssClass
      buttonEl

)(jQuery)

((jQuery) ->
  z = null
  if @VIE isnt undefined
    z = new VIE
    z.use new z.StanbolService
      proxyDisabled: true
      url : 'http://dev.iks-project.eu:8081',

  jQuery.widget 'IKS.halloannotate',
    options:
      vie: z
      editable: null
      toolbar: null
      uuid: ''
      select: ->
      decline: ->
      remove: ->
      buttonCssClass: null

    _create: ->
      widget = @
      if @options.vie is undefined
        throw new Error 'The halloannotate plugin requires VIE'
        return
      unless typeof @element.annotate is 'function'
        throw new Error 'The halloannotate plugin requires annotate.js'
        return

      # states are off, working, on
      @state = 'off'

      @instantiate()

      turnOffAnnotate = ->
        editable = @
        jQuery(editable).halloannotate 'turnOff'
      editableElement = @options.editable.element
      editableElement.on 'hallodisabled', turnOffAnnotate

    populateToolbar: (toolbar) ->
      buttonHolder = jQuery "<span class=\"#{@widgetName}\"></span>"
      @button = buttonHolder.hallobutton
        label: 'Annotate'
        icon: 'fa-tags'
        editable: @options.editable
        command: null
        uuid: @options.uuid
        cssClass: @options.buttonCssClass
        queryState: false
 
      buttonHolder.on 'change', (event) =>
        return if @state is "pending"
        return @turnOn() if @state is "off"
        @turnOff()
            
      buttonHolder.buttonset()

      toolbar.append @button

    cleanupContentClone: (el) ->
      if @state is 'on'
        el.find(".entity:not([about])").each () ->
          jQuery(@).replaceWith jQuery(@).html()

    instantiate: ->
      widget = @
      @options.editable.element.annotate
        vie: @options.vie
        debug: false
        showTooltip: true
        select: @options.select
        remove: @options.remove
        success: @options.success
        error: @options.error
      .on 'annotateselect', (event, data) ->
        widget.options.editable.setModified()
        # console.info @, arguments
      .on 'annotateremove', ->
        jQuery.noop()
        # console.info @, arguments

    turnPending: ->
      @state = 'pending'
      @button.hallobutton 'checked', false
      @button.hallobutton 'disable'

    turnOn: ->
      @turnPending()
      widget = @
      try
        @options.editable.element.annotate 'enable', (success) =>
          return unless success
          @state = 'on'
          @button.hallobutton 'checked', true
          @button.hallobutton 'enable'
      catch e
        alert e

    turnOff: ->
      @options.editable.element.annotate 'disable'
      @state = 'off'
      return unless @button
      @button.attr 'checked', false
      @button.find("label").removeClass "ui-state-clicked"
      @button.button 'refresh'
)(jQuery)

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2012 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget 'IKS.halloblacklist',
    options:
      tags: []

    _init: ->
      unless @options.tags.indexOf('br') is -1
        # Prevent 'enter' key if <br> is blacklisted
        @element.on 'keydown', (event) ->
          event.preventDefault() if event.originalEvent.keyCode is 13

    cleanupContentClone: (el) ->
      for tag in @options.tags
        jQuery(tag, el).remove()

) jQuery

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget 'IKS.halloblock',
    options:
      editable: null
      toolbar: null
      uuid: ''
      elements: [
        'h1'
        'h2'
        'h3'
        'p'
        'pre'
        'blockquote'
      ]
      buttonCssClass: null

    populateToolbar: (toolbar) ->
      buttonset = jQuery "<span class=\"#{@widgetName}\"></span>"
      contentId = "#{@options.uuid}-#{@widgetName}-data"
      target = @_prepareDropdown contentId
      toolbar.append buttonset
      buttonset.hallobuttonset()
      buttonset.append target
      buttonset.append @_prepareButton target

    _prepareDropdown: (contentId) ->
      contentArea = jQuery "<div id=\"#{contentId}\"></div>"

      containingElement = @options.editable.element.get(0).tagName.toLowerCase()

      addElement = (element) =>
        el = jQuery "<button class='blockselector'>
          <#{element} class=\"menu-item\">#{element}</#{element}>
        </button>"
        
        if containingElement is element
          el.addClass 'selected'

        unless containingElement is 'div'
          el.addClass 'disabled'

        el.on 'click', =>
          tagName = element.toUpperCase()
          if el.hasClass 'disabled'
            return
          if navigator.appName is 'Microsoft Internet Explorer'
            # In IE FormatBlock wants tags inside brackets
            @options.editable.execute 'FormatBlock', "<#{tagName}>"
            return
          @options.editable.execute 'formatBlock', tagName
          
        queryState = (event) =>
          block = document.queryCommandValue 'formatBlock'
          if block.toLowerCase() is element
            el.addClass 'selected'
            return
          el.removeClass 'selected'
        
        events = 'keyup paste change mouseup'
        @options.editable.element.on events, queryState

        @options.editable.element.on 'halloenabled', =>
          @options.editable.element.on events, queryState
        @options.editable.element.on 'hallodisabled', =>
          @options.editable.element.off events, queryState

        el

      for element in @options.elements
        contentArea.append addElement element
      contentArea

    _prepareButton: (target) ->
      buttonElement = jQuery '<span></span>'
      buttonElement.hallodropdownbutton
        uuid: @options.uuid
        editable: @options.editable
        label: 'block'
        icon: 'fa-text-height'
        target: target
        cssClass: @options.buttonCssClass
      buttonElement

)(jQuery)

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2012 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license

# This plugin will tidy up pasted content with help of
# the jquery-clean plugin (https://code.google.com/p/jquery-clean/).
# Also the selection save and restore module from rangy
# (https://code.google.com/p/rangy/wiki/SelectionSaveRestoreModule)
# is required in order to resolve cross browser bugs for pasting.
# The plugins have to be accessible or an error will be thrown.
#
# Usage (example):
#
#jQuery('.editable').hallo({
#         plugins: {
#            'hallocleanhtml': {
#              format: false,
#              allowedTags: [
#                'p',
#                'em',
#                'strong',
#                'br',
#                'div',
#                'ol',
#                'ul',
#                'li',
#                'a'],
#              allowedAttributes: ['style']
#            }
#          },
#        });
#
# The plugin options correspond to the available jquery-clean plugin options.
#
# Tested in IE 10 + 9, Chrome 25, FF 19

((jQuery) ->
  rangyMessage = 'The hallocleanhtml plugin requires the selection save and
    restore module from Rangy'
  jQuery.widget 'IKS.hallocleanhtml',

    _create: ->
      if jQuery.htmlClean is undefined
        throw new Error 'The hallocleanhtml plugin requires jQuery.htmlClean'
        return

      editor = this.element
      
      # bind paste handler on first call
      editor.bind 'paste', this, (event) =>
       
        # TODO: find out why this check always fails when placed directly
        # after jQuery.htmlClean check
        if rangy.saveSelection is undefined
          throw new Error rangyMessage
          return
        
        widget = event.data
        # bugfix for overwriting selected text in ie
        widget.options.editable.getSelection().deleteContents()
        lastRange = rangy.saveSelection()
        
        # make sure content will be pasted _empty_ editor and save old contents
        # (because we cannot access clipboard data in all browsers)
        lastContent = editor.html()
        editor.html ''
        
        setTimeout =>
          
          pasted = editor.html()
          cleanPasted = jQuery.htmlClean pasted, @options
          
          #console.log "content before: " + lastContent
          #console.log "pasted content: " + pasted
          #console.log "tidy pasted content: " + cleanPasted
         
          # back in timne to the state before pasting
          editor.html lastContent
          rangy.restoreSelection lastRange
          
          # paste tidy pasted content back
          # TODO: set cursor _behind_ pasted content
          if cleanPasted != ''
            try
              document.execCommand 'insertHTML', false, cleanPasted
            catch error
              # most likely ie
              range = widget.options.editable.getSelection()
              range.insertNode range.createContextualFragment(cleanPasted)
        , 4

) jQuery

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget "IKS.halloformat",
    options:
      editable: null
      uuid: ''
      formattings:
        bold: true
        italic: true
        strikeThrough: false
        underline: false
      buttonCssClass: null

    populateToolbar: (toolbar) ->
      widget = this
      buttonset = jQuery "<span class=\"#{widget.widgetName}\"></span>"

      buttonize = (format) =>
        buttonHolder = jQuery '<span></span>'
        buttonHolder.hallobutton
          label: format
          editable: @options.editable
          command: format
          uuid: @options.uuid
          cssClass: @options.buttonCssClass
        buttonset.append buttonHolder

      for format, enabled of @options.formattings
        continue unless enabled
        buttonize format

      buttonset.hallobuttonset()
      toolbar.append buttonset
)(jQuery)

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget "IKS.halloheadings",
    options:
      editable: null
      uuid: ''
      formatBlocks: ["p", "h1", "h2", "h3"]
      buttonCssClass: null

    populateToolbar: (toolbar) ->
      widget = this
      buttonset = jQuery "<span class=\"#{widget.widgetName}\"></span>"
      ie = navigator.appName is 'Microsoft Internet Explorer'
      command = (if ie then "FormatBlock" else "formatBlock")

      buttonize = (format) =>
        buttonHolder = jQuery '<span></span>'
        buttonHolder.hallobutton
          label: format
          editable: @options.editable
          command: command
          commandValue: (if ie then "<#{format}>" else format)
          uuid: @options.uuid
          cssClass: @options.buttonCssClass
          queryState: (event) ->
            try
              value = document.queryCommandValue command
              if ie
                map = { p: "normal" }
                for val in [1,2,3,4,5,6]
                  map["h#{val}"] = val
                compared = value.match(new RegExp(map[format],"i"))
              else
                compared = value.match(new RegExp(format,"i"))

              result = if compared then true else false
              buttonHolder.hallobutton('checked', result)
            catch e
              return
        buttonHolder.find('button .ui-button-text').text(format.toUpperCase())
        buttonset.append buttonHolder

      for format in @options.formatBlocks
        buttonize format
      
      buttonset.hallobuttonset()
      toolbar.append buttonset
)(jQuery)

((jQuery) ->
  jQuery.widget "IKS.hallohtml",
    options:
      editable: null
      toolbar: null
      uuid: ""
      lang: 'en'
      dialogOpts:
        autoOpen: false
        width: 600
        height: 'auto'
        modal: false
        resizable: true
        draggable: true
        dialogClass: 'htmledit-dialog'
      dialog: null
      buttonCssClass: null

    translations:
      en:
        title: 'Edit HTML'
        update: 'Update'
      de:
        title: 'HTML bearbeiten'
        update: 'Aktualisieren'

    texts: null


    populateToolbar: ($toolbar) ->
      widget = this

      @texts = @translations[@options.lang]

      @options.toolbar = $toolbar
      selector = "#{@options.uuid}-htmledit-dialog"
      @options.dialog = jQuery("<div>").attr 'id', selector

      $buttonset = jQuery("<span>").addClass widget.widgetName

      id = "#{@options.uuid}-htmledit"
      $buttonHolder = jQuery '<span>'
      $buttonHolder.hallobutton
        label: @texts.title
        icon: 'fa-list-alt'
        editable: @options.editable
        command: null
        queryState: false
        uuid: @options.uuid
        cssClass: @options.buttonCssClass
      $buttonset.append $buttonHolder

      @button = $buttonHolder
      @button.click ->
        if widget.options.dialog.dialog "isOpen"
          widget._closeDialog()
        else
          widget._openDialog()
        false

      @options.editable.element.on "hallodeactivated", ->
        widget._closeDialog()

      $toolbar.append $buttonset

      @options.dialog.dialog(@options.dialogOpts)
      @options.dialog.dialog("option", "title", @texts.title)


    _openDialog: ->

      widget = this

      $editableEl = jQuery @options.editable.element
      xposition = $editableEl.offset().left + $editableEl.outerWidth() + 10
      yposition = @options.toolbar.offset().top - jQuery(document).scrollTop()
      @options.dialog.dialog("option", "position", [xposition, yposition])

      @options.editable.keepActivated true
      @options.dialog.dialog("open")

      @options.dialog.on 'dialogclose', =>
        jQuery('label', @button).removeClass 'ui-state-active'
        @options.editable.element.focus()
        @options.editable.keepActivated false

      @options.dialog.html jQuery("<textarea>").addClass('html_source')
      html = @options.editable.element.html()

      #indented_html = @_indent_html html

      @options.dialog.children('.html_source').val html
      @options.dialog.prepend jQuery("<button>#{@texts.update}</button>")

      @options.dialog.on 'click', 'button', ->
        html = widget.options.dialog.children('.html_source').val()
        widget.options.editable.element.html html
        widget.options.editable.element.trigger('change')
        false

    _closeDialog: ->
      @options.dialog.dialog("close")
) jQuery

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
#
#     Image insertion plugin
#
#     Liip AG:
#
#     * Colin Frei
#     * Reto Ryter
#     * David Buchmann
#     * Fabian Vogler
#     * Bartosz Podlewski
((jQuery) ->
  jQuery.widget "IKS.halloimage",
    options:
      editable: null
      toolbar: null
      uuid: ""
      # number of thumbnails for paging in search results
      limit: 8
      # this function is responsible to fetch search results
      # query: terms to search
      # limit: how many results to show at max
      # offset: offset for the returned result
      # successCallback: function that will be called with the response
      # json object
      # the object has fields offset (the requested offset), total (total
      # number of results) and assets (list of url and alt text for each image)
      search: null
      searchUrl: null
      # this function is responsible to fetch suggestions for images to insert
      # this could for example be based on tags of the entity or some semantic
      # enhancement, ...
      #
      # tags: tag information - TODO: do not expect that here but get it from
      # context
      # limit: how many results to show at max
      # offset: offset for the returned result
      # successCallback: function that will be called with the response json
      # object
      # the object has fields offset (the requested offset), total (total
      # number of results) and assets (list of url and alt text for each image)
      suggestions: null
      loaded: null
      upload: null
      uploadUrl: null
      dialogOpts:
        autoOpen: false
        width: 270
        height: "auto"
        title: "Insert Images"
        modal: false
        resizable: false
        draggable: true
        dialogClass: 'halloimage-dialog'
      dialog: null
      buttonCssClass: null
      # Additional configuration options that can be used for
      # image suggestions. The Entity is used to get tags
      # and VIE to load additional data on them.
      entity: null
      vie: null
      dbPediaUrl: "http://dev.iks-project.eu/stanbolfull"
      maxWidth: 250
      maxHeight: 250

    populateToolbar: (toolbar) ->
      @options.toolbar = toolbar
      widget = this
      dialogId = "#{@options.uuid}-image-dialog"
      @options.dialog = jQuery "<div id=\"#{dialogId}\">
        <div class=\"nav\">
          <ul class=\"tabs\">
          </ul>
          <div id=\"#{@options.uuid}-tab-activeIndicator\"
            class=\"tab-activeIndicator\" />
        </div>
        <div class=\"dialogcontent\">
        </div>"

      tabs = jQuery '.tabs', @options.dialog
      tabContent = jQuery '.dialogcontent', @options.dialog
      if widget.options.suggestions
        @_addGuiTabSuggestions tabs, tabContent
      if widget.options.search or widget.options.searchUrl
        @_addGuiTabSearch tabs, tabContent
      if widget.options.upload or widget.options.uploadUrl
        @_addGuiTabUpload tabs, tabContent

      @current = jQuery('<div class="currentImage"></div>').halloimagecurrent
        uuid: @options.uuid
        imageWidget: @
        editable: @options.editable
        dialog: @options.dialog
        maxWidth: @options.maxWidth
        maxHeight: @options.maxHeight

      jQuery('.dialogcontent', @options.dialog).append @current

      buttonset = jQuery "<span class=\"#{widget.widgetName}\"></span>"

      id = "#{@options.uuid}-image"
      buttonHolder = jQuery '<span></span>'
      buttonHolder.hallobutton
        label: 'Images'
        icon: 'fa-picture-o'
        editable: @options.editable
        command: null
        queryState: false
        uuid: @options.uuid
        cssClass: @options.buttonCssClass
      buttonset.append buttonHolder

      @button = buttonHolder
      @button.on "click", (event) ->
        if widget.options.dialog.dialog "isOpen"
          widget._closeDialog()
        else
          widget._openDialog()
        return false

      @options.editable.element.on "hallodeactivated", (event) ->
        widget._closeDialog()

      jQuery(@options.editable.element).delegate "img", "click", (event) ->
        widget._openDialog()

      toolbar.append buttonset

      @options.dialog.dialog(@options.dialogOpts)
      @_handleTabs()

    setCurrent: (image) ->
      @current.halloimagecurrent 'setImage', image

    _handleTabs: ->
      widget = @
      jQuery('.nav li', @options.dialog).on 'click', ->
        jQuery(".#{widget.widgetName}-tab").hide()
        id = jQuery(this).attr 'id'
        jQuery("##{id}-content").show()
        left = jQuery(this).position().left + (jQuery(this).width()/2)
        jQuery("##{widget.options.uuid}-tab-activeIndicator").css
          "margin-left": left
      # Activate first tab
      jQuery('.nav li', @options.dialog).first().click()

    _openDialog: ->
      widget = this
      cleanUp = ->
        window.setTimeout ->
          thumbnails = jQuery(".imageThumbnail")
          jQuery(thumbnails).each ->
            size = jQuery("#" + @id).width()
            if size <= 20
              jQuery("#" + @id).parent("li").remove()
        , 15000  # cleanup after 15 sec

      suggestionSelector = "##{@options.uuid}-tab-suggestions-content"
      getActive = ->
        jQuery('.imageThumbnailActive', suggestionSelector).first().attr "src"

      # Update active Image
      jQuery("##{@options.uuid}-sugg-activeImage").attr "src", getActive()
      jQuery("##{@options.uuid}-sugg-activeImageBg").attr "src", getActive()

      # Save current caret point
      @lastSelection = @options.editable.getSelection()

      # Position correctly
      editableEl = jQuery @options.editable.element
      toolbarEl = jQuery @options.toolbar
      xposition = editableEl.offset().left + editableEl.outerWidth() - 3
      # 3 is the border width of the contenteditable border
      yposition = toolbarEl.offset().top + toolbarEl.outerHeight() + 29
      yposition -=  jQuery(document).scrollTop()
      @options.dialog.dialog("option", "position", [xposition, yposition])
      # do @_getSuggestions
 
      cleanUp()
      widget.options.loaded = 1

      @options.editable.keepActivated true
      @options.dialog.dialog("open")

      @options.dialog.on 'dialogclose', =>
        jQuery('label', @button).removeClass 'ui-state-active'
        do @options.editable.element.focus
        @options.editable.keepActivated false

    _closeDialog: ->
      @options.dialog.dialog("close")

    _addGuiTabSuggestions: (tabs, element) ->
      tabs.append jQuery "<li id=\"#{@options.uuid}-tab-suggestions\"
        class=\"#{@widgetName}-tabselector #{@widgetName}-tab-suggestions\">
          <span>Suggestions</span>
        </li>"
      tab = jQuery "<div id=\"#{@options.uuid}-tab-suggestions-content\"
        class=\"#{@widgetName}-tab tab-suggestions\"></div>"
      element.append tab

      tab.halloimagesuggestions
        uuid: @options.uuid
        imageWidget: @
        entity: @options.entity

    _addGuiTabSearch: (tabs, element) ->
      widget = this
      dialogId = "#{@options.uuid}-image-dialog"

      tabs.append jQuery "<li id=\"#{@options.uuid}-tab-search\"
        class=\"#{@widgetName}-tabselector #{@widgetName}-tab-search\">
          <span>Search</span>
        </li>"

      tab = jQuery "<div id=\"#{@options.uuid}-tab-search-content\"
        class=\"#{widget.widgetName}-tab tab-search\"></div>"
      element.append tab

      tab.halloimagesearch
        uuid: @options.uuid
        imageWidget: @
        searchCallback: @options.search
        searchUrl: @options.searchUrl
        limit: @options.limit
        entity: @options.entity

    _addGuiTabUpload: (tabs, element) ->
      tabs.append jQuery "<li id=\"#{@options.uuid}-tab-upload\"
        class=\"#{@widgetName}-tabselector #{@widgetName}-tab-upload\">
          <span>Upload</span>
        </li>"
      tab = jQuery "<div id=\"#{@options.uuid}-tab-upload-content\"
        class=\"#{@widgetName}-tab tab-upload\"></div>"
      element.append tab

      tab.halloimageupload
        uuid: @options.uuid
        uploadCallback: @options.upload
        uploadUrl: @options.uploadUrl
        imageWidget: @
        entity: @options.entity
 )(jQuery)

((jQuery) ->
  jQuery.widget "IKS.hallo-image-insert-edit",
    options:
      editable: null
      toolbar: null
      uuid: ""
      insert_file_dialog_ui_url: null
      lang: 'en'
      dialogOpts:
        autoOpen: false
        width: 560
        height: 'auto'
        modal: false
        resizable: true
        draggable: true
        dialogClass: 'insert-image-dialog'
      dialog: null
      buttonCssClass: null

    translations:
      en:
        title_insert: 'Insert Image'
        title_properties: 'Image Properties'
        insert: 'Insert'
        chage_image: 'Change Image:'
        source: 'URL'
        width: 'Width'
        height: 'Height'
        alt: 'Alt Text'
        padding: 'Padding'
        'float': 'Float'
        float_left: 'left'
        float_right: 'right'
        float_none: 'No'
      de:
        title_insert: 'Bild einfügen'
        title_properties: 'Bildeigenschaften'
        insert: 'Einfügen'
        chage_image: 'Bild ändern:'
        source: 'URL'
        width: 'Breite'
        height: 'Höhe'
        alt: 'Alt Text'
        padding: 'Padding'
        'float': 'Float'
        float_left: 'Links'
        float_right: 'Rechts'
        float_none: 'Nein'

    texts: null

    dialog_image_selection_ui_loaded: false
    $image: null

    populateToolbar: ($toolbar) ->
      widget = this

      @texts = @translations[@options.lang]

      @options.toolbar = $toolbar

      dialog_html = "<div id='hallo_img_properties'></div>"
      if @options.insert_file_dialog_ui_url
        dialog_html += "<div id='hallo_img_file_select_ui'></div>"

      @options.dialog = jQuery("<div>").
        attr('id', "#{@options.uuid}-insert-image-dialog").
        html(dialog_html)

      $buttonset = jQuery("<span>").addClass @widgetName

      $buttonHolder = jQuery '<span>'
      $buttonHolder.hallobutton
        label: @texts.title_insert
        icon: 'fa-picture-o'
        editable: @options.editable
        command: null
        queryState: false
        uuid: @options.uuid
        cssClass: @options.buttonCssClass
      $buttonset.append $buttonHolder

      @button = $buttonHolder
      @button.click ->
        if widget.options.dialog.dialog "isOpen"
          widget._closeDialog()
        else
          # we need to save the current selection because we will lose focus
          widget.lastSelection = widget.options.editable.getSelection()
          widget._openDialog()
        false

      @options.editable.element.on "halloselected, hallounselected", ->
        if widget.options.dialog.dialog "isOpen"
          widget.lastSelection = widget.options.editable.getSelection()

      @options.editable.element.on "hallodeactivated", ->
        widget._closeDialog()

      jQuery(@options.editable.element).on "click", "img", (e) ->
        widget._openDialog jQuery(this)
        false

      # Prevent contextual toolbar from showing when image is clicked.
      @options.editable.element.on 'halloselected', (event, data) ->
        toolbar_option = widget.options.editable.options.toolbar
        if toolbar_option == "halloToolbarContextual" and
         jQuery(data.originalEvent.target).is('img')
          $toolbar.hide()
          false

      $toolbar.append $buttonset

      @options.dialog.dialog(@options.dialogOpts)


    _openDialog: ($image) ->
      @$image = $image
      widget = this

      $editableEl = jQuery @options.editable.element
      xposition = $editableEl.offset().left + $editableEl.outerWidth() + 10

      if @$image
        yposition = @$image.offset().top - jQuery(document).scrollTop()
      else
        yposition = @options.toolbar.offset().top - jQuery(document).scrollTop()

      @options.dialog.dialog("option", "position", [xposition, yposition])

      @options.editable.keepActivated true
      @options.dialog.dialog("open")

      if @$image
        @options.dialog.dialog("option", "title", @texts.title_properties)
        jQuery(document).keyup (e) ->
          if e.keyCode == 46 or e.keyCode == 8
            jQuery(document).off()
            widget._closeDialog()
            widget.$image.remove()
            widget.$image = null

          e.preventDefault()

        @options.editable.element.on "click", ->
          widget.$image = null
          widget._closeDialog()

      else
        @options.dialog.children('#hallo_img_properties').hide()
        @options.dialog.dialog("option", "title", @texts.title_insert)
        if jQuery('#hallo_img_file_select_title').length > 0
          jQuery('#hallo_img_file_select_title').text ''

      @_load_dialog_image_properties_ui()

      @options.dialog.on 'dialogclose', =>
        jQuery('label', @button).removeClass 'ui-state-active'
        scrollbar_pos = jQuery(document).scrollTop()
        @options.editable.element.focus()
        jQuery(document).scrollTop(scrollbar_pos)  # restore scrollbar pos
        @options.editable.keepActivated false

      if @options.insert_file_dialog_ui_url and not
       @dialog_image_selection_ui_loaded

        @options.dialog.on 'click', ".reload_link", ->
          widget._load_dialog_image_selection_ui()
          false

        @options.dialog.on 'click', '.file_preview img', ->
          if widget.$image
            new_source = jQuery(this).attr('src').replace(/-thumb/, '')
            widget.$image.attr 'src', new_source
            jQuery('#hallo_img_source').val new_source

          else
            widget._insert_image jQuery(this).attr('src').replace(/-thumb/, '')

          false

        @_load_dialog_image_selection_ui()


    _insert_image: (source) ->
      @options.editable.restoreSelection(@lastSelection)
      document.execCommand "insertImage", null, source
      @options.editable.element.trigger('change')
      @options.editable.removeAllSelections()
      @_closeDialog()


    _closeDialog: ->
      @options.dialog.dialog("close")


    _load_dialog_image_selection_ui: ->
      widget = this
      jQuery.ajax
        url: @options.insert_file_dialog_ui_url
        success: (data, textStatus, jqXHR) ->
          file_select_title = ''
          $properties = widget.options.dialog.children('#hallo_img_properties')
          if $properties.is(':visible')
            file_select_title = widget.texts.change_image

          t = "<div id='hallo_img_file_select_title'>#{file_select_title}</div>"
          widget.options.dialog.children('#hallo_img_file_select_ui').
           html( t + data)

          widget.dialog_image_selection_ui_loaded = true
        beforeSend: ->
          widget.options.dialog.children('#hallo_img_file_select_ui').
            html('<div class="hallo_insert_file_loader"></div>')


    _load_dialog_image_properties_ui: ->
      widget = this
      $img_properties = @options.dialog.children('#hallo_img_properties')

      if @$image

        width = if @$image.is('[width]') then @$image.attr('width') else ''
        height = if @$image.is('[height]') then @$image.attr('height') else ''
        html = @_property_input_html( 'source',
          @$image.attr('src'), { label: @texts.source } ) +
        @_property_input_html( 'alt',
          @$image.attr('alt') || '', { label: @texts.alt } ) +
        @_property_row_html(
          @_property_input_html('width',
            width, { label: @texts.width, row: false }) +
          @_property_input_html('height',
            height, { label: @texts.height, row: false })) +
        @_property_input_html( 'padding',
          @$image.css('padding'), { label: @texts.padding } ) +
        @_property_row_html(
          @_property_cb_html( 'float_left',
            @$image.css('float') == 'left',
            { label: @texts.float_left, row: false } ) +
          @_property_cb_html( 'float_right',
            @$image.css('float') == 'right',
            { label: @texts.float_right, row: false } ) +
          @_property_cb_html( 'unfloat',
            @$image.css('float') == 'none',
            { label: @texts.float_none, row: false } ),
        @texts[float])
        $img_properties.html html
        $img_properties.show()
      else
        unless @options.insert_file_dialog_ui_url
          $img_properties.html @_property_input_html 'source',
                                                     '',
                                                     {
                                                       label: @texts.source
                                                     }
          $img_properties.show()

      if @$image
        unless @options.insert_file_dialog_ui_url
          jQuery('#insert_image_btn').remove()

        if jQuery('#hallo_img_file_select_title').length > 0
          jQuery('#hallo_img_file_select_title').text @texts.chage_image

        jQuery('#hallo_img_properties #hallo_img_source').keyup ->
          widget.$image.attr 'src', this.value

        jQuery('#hallo_img_properties #hallo_img_alt').keyup ->
          widget.$image.attr 'alt', this.value

        jQuery('#hallo_img_properties #hallo_img_padding').keyup ->
          widget.$image.css 'padding', this.value

        jQuery('#hallo_img_properties #hallo_img_height').keyup ->
          widget.$image.css 'height', this.value
          widget.$image.attr 'height', this.value

        jQuery('#hallo_img_properties #hallo_img_width').keyup ->
          widget.$image.css 'width', this.value
          widget.$image.attr 'width', this.value

        jQuery('#hallo_img_properties #hallo_img_float_left').click ->
          return false unless this.checked
          widget.$image.css 'float', 'left'
          jQuery('#hallo_img_properties #hallo_img_float_right').
            removeAttr('checked')
          jQuery('#hallo_img_properties #hallo_img_unfloat').
            removeAttr('checked')

        jQuery('#hallo_img_properties #hallo_img_float_right').click ->
          return false unless this.checked
          widget.$image.css 'float', 'right'
          jQuery('#hallo_img_properties #hallo_img_unfloat').
            removeAttr('checked')
          jQuery('#hallo_img_properties #hallo_img_float_left').
            removeAttr('checked')

        jQuery('#hallo_img_properties #hallo_img_unfloat').click ->
          return false unless this.checked
          widget.$image.css 'float', 'none'
          jQuery('#hallo_img_properties #hallo_img_float_right').
            removeAttr('checked')
          jQuery('#hallo_img_properties #hallo_img_float_left').
            removeAttr('checked')

      else
        unless @options.insert_file_dialog_ui_url
          button = "<button id=\"insert_image_btn\">#{@texts.insert}</button>"
          $img_properties.after button
          jQuery('#insert_image_btn').click ->
            $img_source = jQuery('#hallo_img_properties #hallo_img_source')
            widget._insert_image $img_source.val()


    _property_col_html: (col_html) ->
      "<div class='hallo_img_property_col'>#{col_html}</div>"

    _property_row_html: (row_html, label = '') ->
      row_html = @_property_col_html(label) + @_property_col_html(row_html)
      "<div class='hallo_img_property_row'>#{ row_html }</div>"

    _property_html: (property_html, options = {}) ->
      if options.row == false
        if options.label
          entry = "#{options.label} #{property_html}"
          property_html = "<span class='img_property_entry'>#{entry}</span>"
        property_html
      else
        entry = "<span class='img_property_entry'>#{property_html}</span>"
        @_property_row_html(entry, options.label)

    _property_input_html: (id, value, options = {}) ->
      text_field = "<input type='text' id='hallo_img_#{id}' value='#{value}'>"
      @_property_html text_field, options

    _property_cb_html: (id, checked, options = {}) ->
      checked_attr = if checked then 'checked=checked' else ''
      cb = "<input type='checkbox' id='hallo_img_#{id}' #{ checked_attr }'>"
      @_property_html cb, options
) jQuery

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget 'IKS.halloindicator',
    options:
      editable: null
      className: 'halloEditIndicator'

    _create: ->
      this.element.on 'halloenabled', =>
        do @buildIndicator

    populateToolbar: ->

    buildIndicator: ->
      editButton = jQuery '<div><i class="fa fa-edit"></i> Edit</div>'
      editButton.addClass @options.className
      do editButton.hide

      this.element.before editButton

      @bindIndicator editButton
      @setIndicatorPosition editButton

    bindIndicator: (indicator) ->
      indicator.on 'click', =>
        do @options.editable.element.focus

      this.element.on 'halloactivated', ->
        do indicator.hide

      this.element.on 'hallodisabled', ->
        do indicator.remove

      @options.editable.element.hover ->
        return if jQuery(this).hasClass 'inEditMode'
        do indicator.show
      , (data) ->
        return if jQuery(this).hasClass 'inEditMode'
        return if data.relatedTarget is indicator.get 0

        do indicator.hide

    setIndicatorPosition: (indicator) ->
      indicator.css 'position', 'absolute'
      offset = this.element.position()
      indicator.css 'top', offset.top + 2
      indicator.css 'left', offset.left + 2

) jQuery

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget "IKS.hallojustify",
    options:
      editable: null
      toolbar: null
      uuid: ''
      buttonCssClass: null

    populateToolbar: (toolbar) ->
      buttonset = jQuery "<span class=\"#{@widgetName}\"></span>"
      buttonize = (alignment) =>
        buttonElement = jQuery '<span></span>'
        buttonElement.hallobutton
          uuid: @options.uuid
          editable: @options.editable
          label: alignment
          command: "justify#{alignment}"
          icon: "fa-align-#{alignment.toLowerCase()}"
          cssClass: @options.buttonCssClass
        buttonset.append buttonElement
      buttonize "Left"
      buttonize "Center"
      buttonize "Right"

      buttonset.hallobuttonset()
      toolbar.append buttonset
)(jQuery)

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget "IKS.hallolink",
    options:
      editable: null
      uuid: ""
      link: true
      image: true
      defaultUrl: 'http://'
      dialogOpts:
        autoOpen: false
        width: 540
        height: 200
        title: "Enter Link"
        buttonTitle: "Insert"
        buttonUpdateTitle: "Update"
        modal: true
        resizable: false
        draggable: false
        dialogClass: 'hallolink-dialog'
      buttonCssClass: null

    populateToolbar: (toolbar) ->
      widget = this

      dialogId = "#{@options.uuid}-dialog"
      butTitle = @options.dialogOpts.buttonTitle
      butUpdateTitle = @options.dialogOpts.buttonUpdateTitle
      dialog = jQuery "<div id=\"#{dialogId}\">
        <form action=\"#\" method=\"post\" class=\"linkForm\">
          <input class=\"url\" type=\"text\" name=\"url\"
            value=\"#{@options.defaultUrl}\" />
          <input type=\"submit\" id=\"addlinkButton\" value=\"#{butTitle}\"/>
        </form></div>"
      urlInput = jQuery('input[name=url]', dialog)

      isEmptyLink = (link) ->
        return true if (new RegExp(/^\s*$/)).test link
        return true if link is widget.options.defaultUrl
        false

      dialogSubmitCb = (event) ->
        event.preventDefault()

        link = urlInput.val()
        dialog.dialog('close')

        widget.options.editable.restoreSelection(widget.lastSelection)
        if isEmptyLink link
          # link is empty, remove it. Make sure the link is selected
          document.execCommand "unlink", null, ""
        else
          # link does not have ://, add http:// as default protocol
          if !(/:\/\//.test link) && !(/^mailto:/.test link)
            link = 'http://' + link
          if widget.lastSelection.startContainer.parentNode.href is undefined
            # we need a new link
            # following check will work around ie and ff bugs when using
            # "createLink" on an empty selection
            if widget.lastSelection.collapsed
              linkNode = jQuery("<a href='#{link}'>#{link}</a>")[0]
              widget.lastSelection.insertNode linkNode
            else
              document.execCommand "createLink", null, link
          else
            widget.lastSelection.startContainer.parentNode.href = link
        widget.options.editable.element.trigger('change')
        return false

      dialog.find("input[type=submit]").click dialogSubmitCb

      buttonset = jQuery "<span class=\"#{widget.widgetName}\"></span>"
      buttonize = (type) =>
        id = "#{@options.uuid}-#{type}"
        buttonHolder = jQuery '<span></span>'
        buttonHolder.hallobutton
          label: 'Link'
          icon: 'fa fa-link'
          editable: @options.editable
          command: null
          queryState: false
          uuid: @options.uuid
          cssClass: @options.buttonCssClass
        buttonset.append buttonHolder
        button = buttonHolder
        button.on "click", (event) ->
          # we need to save the current selection because we will lose focus
          widget.lastSelection = widget.options.editable.getSelection()
          urlInput = jQuery 'input[name=url]', dialog
          selectionParent = widget.lastSelection.startContainer.parentNode
          unless selectionParent.href
            urlInput.val(widget.options.defaultUrl)
            jQuery(urlInput[0].form).find('input[type=submit]').val(butTitle)
          else
            urlInput.val(jQuery(selectionParent).attr('href'))
            button_selector = 'input[type=submit]'
            jQuery(urlInput[0].form).find(button_selector).val(butUpdateTitle)

          widget.options.editable.keepActivated true
          dialog.dialog('open')

          dialog.on 'dialogclose', ->
            widget.options.editable.restoreSelection widget.lastSelection
            jQuery('label', buttonHolder).removeClass 'ui-state-active'
            do widget.options.editable.element.focus
            widget.options.editable.keepActivated false
          return false

        @element.on "keyup paste change mouseup", (event) ->
          start = jQuery(widget.options.editable.getSelection().startContainer)
          if start.prop('nodeName')
            nodeName = start.prop('nodeName')
          else
            nodeName = start.parent().prop('nodeName')
          if nodeName and nodeName.toUpperCase() is "A"
            jQuery('label', button).addClass 'ui-state-active'
            return
          jQuery('label', button).removeClass 'ui-state-active'

      if (@options.link)
        buttonize "A"

      if (@options.link)
        toolbar.append buttonset
        buttonset.hallobuttonset()
        dialog.dialog(@options.dialogOpts)
)(jQuery)

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget "IKS.hallolists",
    options:
      editable: null
      toolbar: null
      uuid: ''
      lists:
        ordered: true
        unordered: true
      buttonCssClass: null

    populateToolbar: (toolbar) ->
      buttonset = jQuery "<span class=\"#{@widgetName}\"></span>"
      buttonize = (type, label) =>
        buttonElement = jQuery '<span></span>'
        buttonElement.hallobutton
          uuid: @options.uuid
          editable: @options.editable
          label: label
          command: "insert#{type}List"
          icon: "fa-list-#{label.toLowerCase()}"
          cssClass: @options.buttonCssClass
        buttonset.append buttonElement

      buttonize "Ordered", "OL" if @options.lists.ordered
      buttonize "Unordered", "UL" if @options.lists.unordered

      buttonset.hallobuttonset()
      toolbar.append buttonset

)(jQuery)

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
#
# -----------------------------------------
#
#     Hallo overlay plugin
#     (c) 2011 Liip AG, Switzerland
#     This plugin may be freely distributed under the MIT license.
#
# The overlay plugin adds an overlay around the editable element.
# It has no direct dependency with other plugins, but requires the
# "floating" hallo option to be false to look nice. Furthermore, the
# toolbar should have the same width as the editable element.
((jQuery) ->
  jQuery.widget "IKS.hallooverlay",
    options:
      editable: null
      toolbar: null
      uuid: ""
      overlay: null
      padding: 10
      background: null

    _create: ->
      widget = this

      unless @options.bound
        @options.bound = true
        @options.editable.element.on "halloactivated", (event, data) ->
          widget.options.currentEditable = jQuery(event.target)
          if !widget.options.visible
            widget.showOverlay()

        @options.editable.element.on "hallomodified", (event, data) ->
          widget.options.currentEditable = jQuery(event.target)
          if widget.options.visible
            widget.resizeOverlay()

        @options.editable.element.on "hallodeactivated", (event, data) ->
          widget.options.currentEditable = jQuery(event.target)
          if widget.options.visible
            widget.hideOverlay()

    showOverlay: ->
      @options.visible = true
      if @options.overlay is null
        if jQuery("#halloOverlay").length > 0
          @options.overlay = jQuery("#halloOverlay")
        else
          @options.overlay = jQuery "<div id=\"halloOverlay\"
            class=\"halloOverlay\">"
          jQuery(document.body).append @options.overlay

        @options.overlay.on 'click'
        , jQuery.proxy @options.editable.turnOff, @options.editable

      @options.overlay.show()
            
      if @options.background is null
        if jQuery("#halloBackground").length > 0
          @options.background = jQuery("#halloBackground")
        else
          @options.background = jQuery "<div id=\"halloBackground\"
            class=\"halloBackground\">"
          jQuery(document.body).append @options.background


      @resizeOverlay()
      @options.background.show()

      unless @options.originalZIndex
        @options.originalZIndex = @options.currentEditable.css "z-index"
      @options.currentEditable.css 'z-index', '350'

    resizeOverlay: ->
      offset = @options.currentEditable.offset()
      @options.background.css
        top: offset.top - @options.padding
        left: offset.left - @options.padding
        width: @options.currentEditable.width() + 2 * @options.padding
        height: @options.currentEditable.height() + 2 * @options.padding

    hideOverlay: ->
      @options.visible = false
      @options.overlay.hide()
      @options.background.hide()

      @options.currentEditable.css 'z-index', @options.originalZIndex

    # Find the closest parent having a background color. If none, returns white.
    _findBackgroundColor: (jQueryfield) ->
      color = jQueryfield.css "background-color"
      if color isnt 'rgba(0, 0, 0, 0)' and color isnt 'transparent'
        return color

      if jQueryfield.is "body"
        return "white"
      else
        return @_findBackgroundColor jQueryfield.parent()

)(jQuery)

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget "IKS.halloreundo",
    options:
      editable: null
      toolbar: null
      uuid: ''
      buttonCssClass: null

    populateToolbar: (toolbar) ->
      buttonset = jQuery "<span class=\"#{@widgetName}\"></span>"
      buttonize = (cmd, label) =>
        buttonElement = jQuery '<span></span>'
        buttonElement.hallobutton
          uuid: @options.uuid
          editable: @options.editable
          label: label
          icon: if cmd is 'undo' then 'fa-undo' else 'fa-repeat'
          command: cmd
          queryState: false
          cssClass: @options.buttonCssClass
        buttonset.append buttonElement
      buttonize "undo", "Undo"
      buttonize "redo", "Redo"

      buttonset.hallobuttonset()
      toolbar.append buttonset
)(jQuery)

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2011 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
#
# ------------------------------------------------------
#
#     Hallo linebreak plugin
#     (c) 2011 Liip AG, Switzerland
#     This plugin may be freely distributed under the MIT license.
#
# The linebreak plugin allows linebreaks between editor buttons by
# wrapping each row in a div.
# It requires that all widgets have an id consisting of the uuid and
# the name for the surrounding element
# (<span id=\"#{@options.uuid}-" + widget.widgetName + "\">)
#
# The only option is 'breakAfter', which should be an array of
# widgetnames after which a linebreak should be inserted
# Make sure to add this option _after_ all the plugins that output
# toolbar icons when passing in the hallo options!
((jQuery) ->
  jQuery.widget "IKS.hallotoolbarlinebreak",
    options:
      editable: null
      uuid: ""
      # array of widgetnames after which a linebreak should occur
      breakAfter: []

    populateToolbar: (toolbar) ->
      buttonsets = jQuery('.ui-buttonset', toolbar)
      queuedButtonsets = jQuery()
      rowcounter = 0

      for row in @options.breakAfter
        rowcounter++
        buttonRow = "<div
          class=\"halloButtonrow halloButtonrow-#{rowcounter}\" />"
        for buttonset in buttonsets
          queuedButtonsets = jQuery(queuedButtonsets).add(jQuery(buttonset))
          if jQuery(buttonset).hasClass row
            queuedButtonsets.wrapAll buttonRow
            buttonsets = buttonsets.not(queuedButtonsets)
            queuedButtonsets = jQuery()
            break

      if buttonsets.length > 0
        rowcounter++
        buttonRow = "<div
          class=\"halloButtonrow halloButtonrow-#{rowcounter}\" />"
        buttonsets.wrapAll buttonRow
)(jQuery)

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2012 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget 'IKS.halloimagecurrent',
    options:
      imageWidget: null
      startPlace: ''
      draggables: []
      maxWidth: 400
      maxHeight: 200

    _create: ->
      @element.html '<div>
        <div class="activeImageContainer">
          <div class="rotationWrapper">
            <div class="hintArrow"></div>
              <img src="" class="activeImage" />
            </div>
            <img src="" class="activeImage activeImageBg" />
          </div>
        </div>'
      @element.hide()
      @_prepareDnD()

    _init: ->
      editable = jQuery @options.editable.element
      widget = @
      jQuery('img', editable).each (index, elem) ->
        widget._initDraggable elem, editable

      jQuery('p', editable).each (index, elem) ->
        return if jQuery(elem).data 'jquery_droppable_initialized'
        jQuery(elem).droppable
          tolerance: 'pointer'
          drop: (event, ui) -> widget._handleDropEvent event, ui
          over: (event, ui) -> widget._handleOverEvent event, ui
          out: (event, ui) -> widget._handleLeaveEvent event, ui
        jQuery(elem).data 'jquery_droppable_initialized', true

    _prepareDnD: ->
      widget = @
      editable = jQuery @options.editable.element

      @options.offset = editable.offset()
      @options.third = parseFloat editable.width() / 3
      overlayMiddleConfig =
        width: @options.third
        height: editable.height()

      @overlay =
        big: jQuery("<div/>").addClass("bigOverlay").css
          width: @options.third * 2
          height: editable.height()
        left: jQuery("<div/>").addClass("smallOverlay smallOverlayLeft")
        right: jQuery("<div/>").addClass("smallOverlay smallOverlayRight")
      @overlay.left.css overlayMiddleConfig
      @overlay.right.css(overlayMiddleConfig).css("left", @options.third * 2)

      editable.on 'halloactivated', ->
        widget._enableDragging()
      editable.on 'hallodeactivated', ->
        widget._disableDragging()

    setImage: (image) ->
      return unless image
      @element.show()

      jQuery('.activeImage', @element).attr 'src', image.url

      if image.label
        jQuery('input', @element).val image.label

      @_initImage jQuery @options.editable.element

    # Delay the execution of a function
    _delayAction: (functionToCall, delay) ->
      timer = clearTimeout timer
      timer = setTimeout(functionToCall, delay) unless timer
      
    # Calculate position on an initial drag
    _calcDropPosition: (offset, event) ->
      position = offset.left + @options.third
      rightTreshold = offset.left + @options.third * 2
      if event.pageX >= position and event.pageX <= rightTreshold
        return 'middle'
      else if event.pageX < position
        return 'left'
      else if event.pageX > rightTreshold
        return 'right'

    # create image to be inserted
    _createInsertElement: (image, tmp) ->
      imageInsert = jQuery '<img>'

      tmpImg = new Image()

      jQuery(tmpImg).on 'load', ->
      tmpImg.src = image.src
      
      imageInsert.attr
        src: tmpImg.src
        alt: jQuery(image).attr('alt') unless tmp
        class: if tmp then 'halloTmp' else 'imageInText'

      imageInsert.show()
      imageInsert

    _createLineFeedbackElement: ->
      jQuery('<div/>').addClass 'halloTmpLine'

    _removeFeedbackElements: ->
      @overlay.big.remove()
      @overlay.left.remove()
      @overlay.right.remove()
      jQuery('.halloTmp, .halloTmpLine', @options.editable.element).remove()

    _removeCustomHelper: ->
      jQuery('.customHelper').remove()

    _showOverlay: (position) ->
      editable = jQuery @options.editable.element
      eHeight = editable.height()
      eHeight += parseFloat(editable.css('paddingTop'))
      eHeight += parseFloat(editable.css('paddingBottom'))

      @overlay.big.css height: eHeight
      @overlay.left.css height: eHeight
      @overlay.right.css height: eHeight

      switch position
        when 'left'
          @overlay.big.addClass("bigOverlayLeft")
          @overlay.big.removeClass("bigOverlayRight")
          @overlay.big.css
            left: @options.third
          @overlay.big.show()
          @overlay.left.hide()
          @overlay.right.hide()
        when 'middle'
          @overlay.big.removeClass "bigOverlayLeft bigOverlayRight"
          @overlay.big.hide()
          @overlay.left.show()
          @overlay.right.show()
        when 'right'
          @overlay.big.addClass("bigOverlayRight")
          @overlay.big.removeClass("bigOverlayLeft")
          @overlay.big.css
            left: 0
          @overlay.big.show()
          @overlay.left.hide()
          @overlay.right.hide()

    # check if the element was dragged into or within a contenteditable
    _checkOrigin: (event) ->
      unless jQuery(event.target).parents("[contenteditable]").length is 0
        return true
      false

    _createFeedback: (image, position)->
      if position is 'middle'
        return @_createLineFeedbackElement()
      el = @_createInsertElement image, true
      el.addClass "inlineImage-#{position}"

    _handleOverEvent: (event, ui) ->
      widget = @
      editable = jQuery @options.editable
      postPone = ->
        window.waitWithTrash = clearTimeout(window.waitWithTrash)
        position = widget._calcDropPosition widget.options.offset, event

        jQuery('.trashcan', ui.helper).remove()

        editable[0].element.append widget.overlay.big
        editable[0].element.append widget.overlay.left
        editable[0].element.append widget.overlay.right

        widget._removeFeedbackElements()
        target = jQuery event.target
        target.prepend widget._createFeedback ui.draggable[0], position

        # already create the other feedback elements here, because we have a
        # reference to the droppable
        if position is 'middle'
          target.prepend widget._createFeedback ui.draggable[0], 'right'
          jQuery('.halloTmp', event.target).hide()
        else
          target.prepend widget._createFeedback ui.draggable[0], 'middle'
          jQuery('.halloTmpLine', event.target).hide()

        widget._showOverlay position

      # we need to postpone the handleOverEvent execution of the function for
      # a tiny bit to avoid the handleLeaveEvent to be fired after the
      # handleOverEvent. Removing this timeout will break things
      setTimeout(postPone, 5)

    _handleDragEvent: (event, ui) ->
      position = @_calcDropPosition @options.offset, event

      # help perfs
      return if position is @_lastPositionDrag

      @_lastPositionDrag = position

      tmpFeedbackLR = jQuery '.halloTmp', @options.editable.element
      tmpFeedbackMiddle = jQuery '.halloTmpLine', @options.editable.element

      if position is 'middle'
        tmpFeedbackMiddle.show()
        tmpFeedbackLR.hide()
      else
        tmpFeedbackMiddle.hide()
        tmpFeedbackLR.removeClass('inlineImage-left inlineImage-right')
        tmpFeedbackLR.addClass("inlineImage-#{position}")
        tmpFeedbackLR.show()

      @_showOverlay position

    _handleLeaveEvent: (event, ui) ->
      func = ->
        unless jQuery('div.trashcan', ui.helper).length
          jQuery(ui.helper).append(jQuery('<div class="trashcan"></div>'))
          jQuery('.bigOverlay, .smallOverlay').remove()
      # only remove the trash after being outside of an editable more than
      # X milliseconds
      window.waitWithTrash = setTimeout(func, 200)
      @_removeFeedbackElements()

    _handleStartEvent: (event, ui) ->
      internalDrop = @_checkOrigin event
      if internalDrop
        jQuery(event.target).remove()

      jQuery(document).trigger 'startPreventSave'
      @options.startPlace = jQuery(event.target)

    _handleStopEvent: (event, ui) ->
      internalDrop = @_checkOrigin event
      if internalDrop
        jQuery(event.target).remove()
      else
        jQuery(@options.editable.element).trigger 'change'

      @overlay.big.hide()
      @overlay.left.hide()
      @overlay.right.hide()

      jQuery(document).trigger 'stopPreventSave'

    _handleDropEvent: (event, ui) ->
      editable = jQuery @options.editable.element
      # check whether it is an internal drop or not
      internalDrop = @_checkOrigin event
      position = @_calcDropPosition @options.offset, event
      @_removeFeedbackElements()
      @_removeCustomHelper()

      imageInsert = @_createInsertElement ui.draggable[0], false
      classes = 'inlineImage-middle inlineImage-left inlineImage-right'
      if position is 'middle'
        imageInsert.show()
        imageInsert.removeClass classes
        left = editable.width()
        left += parseFloat(editable.css('paddingLeft'))
        left += parseFloat(editable.css('paddingRight'))
        left -= imageInsert.attr('width')
        imageInsert.addClass("inlineImage-#{position}").css
          position: 'relative'
          left: left / 2
        imageInsert.insertBefore jQuery event.target
      else
        imageInsert.removeClass classes
        imageInsert.addClass("inlineImage-#{position}")
        imageInsert.css 'display', 'block'
        jQuery(event.target).prepend imageInsert

      @overlay.big.hide()
      @overlay.left.hide()
      @overlay.right.hide()
      # Let the editor know we did a change
      editable.trigger('change')
      # init the new image in the content
      @_initImage editable

    _createHelper: (event) ->
      jQuery('<div>').css(
        backgroundImage: "url(#{jQuery(event.currentTarget).attr('src')})"
      ).addClass('customHelper').appendTo('body')

    _initDraggable: (elem, editable) ->
      widget = @
      unless elem.jquery_draggable_initialized
        elem.jquery_draggable_initialized = true
        jQuery(elem).draggable
          cursor: 'move'
          helper: (event) -> widget._createHelper event
          drag: (event, ui) -> widget._handleDragEvent event, ui
          start: (event, ui) -> widget._handleStartEvent event, ui
          stop: (event, ui) -> widget._handleStopEvent event, ui
          disabled: not editable.hasClass 'inEditMode'
          cursorAt:
            top: 50
            left: 50
      widget.options.draggables.push elem

    # initialize draggable and droppable elements in the page
    # Safe to be called multiple times
    _initImage: (editable) ->
      widget = @

      jQuery('.rotationWrapper img', @options.dialog).each (index, elem) ->
        widget._initDraggable elem, editable

    _enableDragging: ->
      jQuery.each @options.draggables, (index, d) ->
        jQuery(d).draggable 'option', 'disabled', false

    _disableDragging: () ->
      jQuery.each @options.draggables, (index, d) ->
        jQuery(d).draggable 'option', 'disabled', true

) jQuery

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2012 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget 'IKS.halloimagesearch',
    options:
      imageWidget: null
      searchCallback: null
      searchUrl: null
      limit: 5

    _create: ->
      @element.html '<div>
        <form method="get">
          <input type="text" class="searchInput" placeholder="Search" />
          <input type="submit" class="btn searchButton" value="OK" />
        </form>
        <div class="searchResults imageThumbnailContainer">
          <div class="activitySpinner">Loading images...</div>
          <ul></ul>
        </div>
      </div>'

    _init: ->
      if @options.searchUrl and !@options.searchCallback
        @options.searchCallback = @_ajaxSearch

      jQuery('.activitySpinner', @element).hide()

      jQuery('form', @element).submit (event) =>
        event.preventDefault()

        jQuery('.activitySpinner', @element).show()

        query = jQuery('.searchInput', @element.element).val()
        @options.searchCallback query, @options.limit, 0, (results) =>
          @_showResults results

    _showResult: (image) ->
      image.label = image.alt unless image.label

      html = jQuery "<li>
        <img src=\"#{image.url}\" class=\"imageThumbnail\"
          title=\"#{image.label}\"></li>"

      html.on 'click', =>
        @options.imageWidget.setCurrent image

      # Prevent users from dragging from the thumbnails list
      jQuery('img', html).on 'mousedown', (event) =>
        event.preventDefault()
        @options.imageWidget.setCurrent image

      jQuery('.imageThumbnailContainer ul', @element).append html

    _showNextPrev: (results) ->
      container = jQuery 'imageThumbnailContainer ul', @element
      container.prepend jQuery '<div class="pager-prev" style="display:none" />'
      container.append jQuery '<div class="pager-next" style="display:none" />'

      jQuery('.pager-prev', container).show() if results.offset > 0
      jQuery('.pager-next', container).show() if results.offset < results.total

      jQuery('.pager-prev', container).click (event) =>
        offset = results.offset - @options.limit
        @options.searchCallback query, @options.limit, offset, (results) =>
          @_showResults results
      jQuery('.pager-next', container).click (event) =>
        offset = results.offset + @options.limit
        @options.searchCallback query, @options.limit, offset, (results) =>
          @_showResults results

    _showResults: (results) ->
      jQuery('.activitySpinner', @element).hide()
      jQuery('.imageThumbnailContainer ul', @element).empty()
      jQuery('.imageThumbnailContainer ul', @element).show()

      @_showResult image for image in results.assets

      @options.imageWidget.setCurrent results.assets.shift()

      @_showNextPrev results

    _ajaxSearch: (query, limit, offset, success) ->
      searchUrl = @searchUrl + '?' + jQuery.param
        q: query
        limit: limit
        offset: offset

      jQuery.getJSON searchUrl, success

) jQuery

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2012 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget 'IKS.halloimagesuggestions',
    loaded: false

    options:
      entity: null
      vie: null
      dbPediaUrl: null
      getSuggestions: null
      thumbnailUri: '<http://dbpedia.org/ontology/thumbnail>'

    _create: ->
      @element.html '
      <div id="' + @options.uuid + '-tab-suggestions">
        <div class="imageThumbnailContainer">
          <div class="activitySpinner">Loading images...</div>
          <ul></ul>
        </div>
      </div>'

    _init: ->
      jQuery('.activitySpinner', @element).hide()

    _normalizeRelated: (related) ->
      return related if _.isString related
      return related.join(',') if _.isArray related
      related.pluck('@subject').join ','

    _prepareVIE: ->
      @options.vie = new VIE unless @options.vie
      return if @options.vie.services.dbpedia
      return unless @options.dbPediaUrl

      @options.vie.use new vie.DBPediaService
        url: @options.dbPediaUrl
        proxyDisabled: true

    _getSuggestions: ->
      return if @loaded
      return unless @options.entity

      jQuery('.activitySpinner', @element).show()

      tags = @options.entity.get 'skos:related'
      if tags.length is 0
        jQuery("#activitySpinner").html 'No images found.'
        return

      jQuery('.imageThumbnailContainer ul', @element).empty()

      # Get suggestions from server
      normalizedTags = @_normalizeRelated tags
      limit = @options.limit
      if @options.getSuggestions
        @options.getSuggestions normalizedTags, limit, 0, @_showSuggestions

      do @_prepareVIE
      @_getSuggestionsDbPedia tags if @options.vie.services.dbpedia

      @loaded = true

    _getSuggestionsDbPedia: (tags) ->
      widget = this
      thumbId = 1
      _.each tags, (tag) ->
        vie.load(entity: tag).using('dbpedia').execute().done (entities) ->
          jQuery('.activitySpinner', @element).hide()

          _.each entities, (entity) ->
            thumbnail = entity.attributes[widget.options.thumbnailUri]
            return unless thumbnail
            if _.isObject thumbnail
              img = thumbnail[0].value
            if _.isString thumbnail
              img = widget.options.entity.fromReference thumbnail
            widget._showSuggestion
              url: img
              label: tag

    _showSuggestion: (image) ->
      html = jQuery "<li>
        <img src=\"#{image.url}\" class=\"imageThumbnail\"
          title=\"#{image.label}\">
        </li>"
      html.on 'click', =>
        @options.imageWidget.setCurrent image
      jQuery('.imageThumbnailContainer ul', @element).append html

    _showSuggestions: (suggestions) ->
      jQuery('.activitySpinner', @element).hide()

      _.each suggestions, (image) =>
        @_showSuggestion image

) jQuery

#     Hallo - a rich text editing jQuery UI widget
#     (c) 2012 Henri Bergius, IKS Consortium
#     Hallo may be freely distributed under the MIT license
((jQuery) ->
  jQuery.widget 'IKS.halloimageupload',
    options:
      uploadCallback: null
      uploadUrl: null
      imageWidget: null
      entity: null

    _create: ->
      @element.html '
        <form class="upload">
        <input type="file" class="file" name="userfile" accept="image/*" />
        <input type="hidden" name="tags" value="" />
        <input type="text" class="caption" name="caption" placeholder="Title" />
        <button class="uploadSubmit">Upload</button>
        </form>
      '
    _init: ->
      widget = @
      if widget.options.uploadUrl and !widget.options.uploadCallback
        widget.options.uploadCallback = widget._iframeUpload

      jQuery('.uploadSubmit', @element).on 'click', (event) ->
        event.preventDefault()
        event.stopPropagation()
        widget.options.uploadCallback
          widget: widget
          success: (url) ->
            widget.options.imageWidget.setCurrent
              url: url
              label: ''

    _prepareIframe: (widget) ->
      iframeName = "#{widget.widgetName}_postframe_#{widget.options.uuid}"
      iframeName = iframeName.replace /-/g, '_'
      iframe = jQuery "##{iframeName}"
      return iframe if iframe.length

      iframe = jQuery "<iframe name=\"#{iframeName}\" id=\"#{iframeName}\"
        class=\"hidden\" style=\"display:none\" />"
      @element.append iframe
      iframe.get(0).name = iframeName
      iframe

    _iframeUpload: (data) ->
      widget = data.widget
      iframe = widget._prepareIframe widget

      uploadForm = jQuery 'form.upload', widget.element

      if typeof widget.options.uploadUrl is 'function'
        uploadUrl = widget.options.uploadUrl widget.options.entity
      else
        uploadUrl = widget.options.uploadUrl

      iframe.on 'load', ->
        imageUrl = iframe.get(0).contentWindow.location.href
        widget.element.hide()
        data.success imageUrl

      uploadForm.attr 'action', uploadUrl
      uploadForm.attr 'method', 'post'
      uploadForm.attr 'target', iframe.get(0).name
      uploadForm.attr 'enctype', 'multipart/form-data'
      uploadForm.attr 'encoding', 'multipart/form-data'
      uploadForm.submit()

) jQuery
