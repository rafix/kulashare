<?php

namespace Kulashare\Bundle\ProductBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Kulashare\Bundle\ProductBundle\Entity\Product;
use Kulashare\Bundle\ProductBundle\Entity\ProductTranslation;
use Kulashare\Bundle\ProductBundle\Form\Type\ProductType;
use Sylius\Bundle\ResourceBundle\Controller\ResourceController;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sylius\Component\Core\Model\ProductVariant;
use Sylius\Bundle\FixturesBundle\DataFixtures\ORM\LoadImagesData;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;

class ProductController extends Controller
{
	/**
	 * @Security("has_role('ROLE_USER')")
	 */
    public function newProductAction()
    {
    	/*if (!$this->get('security.authorization_checker')->isGranted('IS_AUTHENTICATED_FULLY')) {	       
	        return $this->redirect($this->generateUrl('sylius_user_security_login'));
	    }*/

    	$product = new Product();
    	#User Direction Data
    	$user = $this->getUser()->getCustomer();
//$userAddress="";
	    	 	$userAddress = $user->getStreetAddress1().', ';
	    	$userAddress .= $user->getCity().', ';
	    	$userAddress .= $user->getState().', ';
	    	$userAddress .= $user->getCountry();
	    	$address = urlencode($userAddress);
			$json = file_get_contents("http://maps.google.com/maps/api/geocode/json?address=$address&sensor=false");
			$decoded = json_decode($json);
			if (count($decoded) > 0) {
	    	$lat = $decoded->results[0]->geometry->location->lat;
	    	$long = $decoded->results[0]->geometry->location->lng;
			}
	        # ==== END USER DATA ====
    	    	$product->setCurrentLocale("en_US");
	    $product->setFallbackLocale("en_US");
	    $product->setStatus("disponible");
	    $product->getTranslations()->add(new ProductTranslation());
    	$form = $this->createForm(new ProductType("Kulashare\Bundle\ProductBundle\Entity\Product"),
    							  $product    							  
    							  );

    	#Agrego los parametros de direccion para usarlos el geo_function
        return $this->render('KulashareProductBundle:Default:index.html.twig', array('form' => $form->createView(),'update'=>false, 'lat' => $lat, 'long' => $long ));
    }

	/**
	 * @Security("has_role('ROLE_USER')")
	 */
    public function createProductAction(Request $request)
	{		
		/*if (!$this->get('security.authorization_checker')->isGranted('IS_AUTHENTICATED_FULLY')) {
	        
	        return $this->redirect($this->generateUrl('sylius_user_security_login'));
	    }*/

	    $em = $this->getDoctrine()->getManager();

	    $product = new Product();
	    $product->setCurrentLocale("en_US");
	    $product->setFallbackLocale("en_US");
	    $product->setStatus("disponible");
	    $prodTranslation = new ProductTranslation();
	    $prodTranslation->setLocale("en_US");
	  	$product->getTranslations()->add($prodTranslation);
	    $form = $this->createForm(new ProductType("Kulashare\Bundle\ProductBundle\Entity\Product"),
    							  $product);

	    $this->getRequest()->setLocale("en_US");

		$uploadOk=0;
	    if ($request->isMethod('POST')) {
        	$form->submit($request->request->get($form->getName()));

			    if ($form->isValid()) {
			        $productData = $form->getData();
			        $user = $this->getUser();
			        $productData->setUserCreated($user);    	
			    	
			
			    	$pr = $productData->getTranslations()->first();
			    	$pr->setTranslatable($productData);
			    	$productData->getTranslations()->remove(0);
			    	$productData->getTranslations()->add($pr);

			    	$productData->getMasterVariant()->setPricingCalculator("standard");
			    
					$em->persist($productData);
					
						$em->flush();
						$this->get('session')->getFlashBag()->add(
		            	'notice',
		            	'The product has been saved.'
		        	);
					
			    	if(file_exists($_FILES["sylius_product"]["tmp_name"]["masterVariant"]["images"][0]["file"])){
				    	$target_dir = "/home/kulashare/public_html/dev/web/images/";
						$target_file = $target_dir . basename($_FILES["sylius_product"]["name"]["masterVariant"]["images"][0]["file"]);
						$uploadOk = 1;
						$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
						$check = getimagesize($_FILES["sylius_product"]["tmp_name"]["masterVariant"]["images"][0]["file"]);
					    if($check !== false)  $uploadOk = 1;
					   	else  $uploadOk = 0;
					   	// Check if file already exists
						 if (file_exists($target_file))  $uploadOk = 0;
						// Check file size
						 if ($_FILES["sylius_product"]["size"]["masterVariant"]["images"][0]["file"] > 500000)  $uploadOk = 0;
						// Allow certain file formats
						if($imageFileType != "jpg" 
							&& $imageFileType != "png" 
							&& $imageFileType != "jpeg"
							&& $imageFileType != "gif" ) $uploadOk = 0;
						// Check if $uploadOk is set to 0 by an error
					
      				}	

			    	
			    
	    		}	
	    		else{
	    			var_dump($form->getErrors());die;
	    		}
		}    
    	if ( $uploadOk != 0) {
					if(move_uploaded_file($_FILES["sylius_product"]["tmp_name"]["masterVariant"]["images"][0]["file"], $target_file)){
							$em = $this->getDoctrine()->getEntityManager();
							$connection = $em->getConnection();
							$statement = $connection->prepare("INSERT INTO sylius_product_variant_image (variant_id,path,created_at,updated_at) VALUES (:variant_id,:pad,NOW(),NOW())
											"  );
						$statement->bindValue('variant_id',$productData->getMasterVariant()->getId());
						$statement->bindValue('pad','/dev/web/images/'. basename($_FILES["sylius_product"]["name"]["masterVariant"]["images"][0]["file"]) );
						$statement->execute();
					}
				}
	   return $this->redirect($this->generateUrl('kulashare_product_add'));
	}

	/**
	 * @Security("has_role('ROLE_USER')")
	 */
    public function listProductAction(Request $request)
	{
		if (!$this->get('security.authorization_checker')->isGranted('ROLE_USER')) {
	        
	        return $this->redirect($this->generateUrl('sylius_user_security_login'));
	    }

	    //find all product for the user logged
        $repositoryProduct = $this->container->get('sylius.repository.product');

        $user = $this->getUser();
        $query = $repositoryProduct->createQueryBuilder('p')
            ->where('p.userCreated = :user')
            ->setParameter('user', $user->getId())            
            ->orderBy('p.createdAt', 'DESC')        
            ->getQuery();

        $queryBuilder = $repositoryProduct->createQueryBuilder('product');
         $queryBuilder->where('product.userCreated = :user')
            ->setParameter('user', $user->getId())    
            ->orderBy('product.createdAt', 'DESC');

        $paginator = $repositoryProduct->getPaginator($queryBuilder);
        $products = $query->getResult();

        //print_r(count($products));die;
        return $this->render('KulashareProductBundle:Default:list.html.twig', array('products' => $products, 'paginator' => $paginator));
	}

	/**
	 * @Security("has_role('ROLE_USER')")
	 */
    public function showProductAction($id)
	{
		/*if (!$this->get('security.authorization_checker')->isGranted('IS_AUTHENTICATED_FULLY')) {
	        
	        return $this->redirect($this->generateUrl('sylius_user_security_login'));
	    }*/

	    //find product by id
        $repositoryProduct = $this->container->get('sylius.repository.product');
        $user = $this->getUser();

        $product = $repositoryProduct->findById($id);
        /* Add Nico*/
        $userRepository = $this->container->get('sylius.repository.user');
		foreach ($product as $key => $value) {
			$user = $userRepository->find($value->getUserCreated()->getId());
			$product[$key]->setUserCreated($user);
		}
		//products related
        $query = $repositoryProduct->createQueryBuilder('p')                      
            ->orderBy('p.createdAt', 'DESC')        
            ->getQuery();
        $products = $query
       				->setFirstResult(0)
       				->setMaxResults(5)
       				->getResult()
       				;
       	// echo '<pre>';
        // print_r($product);
        // echo '</pre>';
        // die;
       	$repositoryCategories = $this->container->get('sylius.repository.taxonomy');
        $taxonomies = $repositoryCategories->findAll();			
        return $this->render('KulashareProductBundle:Default:product.html.twig', array('product' => $product, 'update'=>false, 'products' => $products,'categoriesSelect' => $taxonomies[0]->getTaxons()));
	}

	public function filterProductByCategoryAction(Request $request,$categoryId)
	{
		//find all product by category id
		$taxonRepository = $this->container->get('sylius.repository.taxon');
    	$taxons = $taxonRepository->findById($categoryId);		

        $products = $taxons[0]->getProducts();
        $userRepository = $this->container->get('sylius.repository.user');
		foreach ($products as $key => $value) {
			$user = $userRepository->find($value->getUserCreated()->getId());
			$products[$key]->setUserCreated($user);
		}


        //find all categories
        $repositoryCategories = $this->container->get('sylius.repository.taxonomy');
        $taxonomies = $repositoryCategories->findAll();

		 if($request->isXmlHttpRequest()) {
            return new JsonResponse( array('products' => $products, 'categories' => $taxonomies, 'categoriesSelect' => $taxonomies[0]->getTaxons() ));
        }
        else
        {
          return $this->render('KulashareStoreFrontBundle:Default:index.html.twig', array('products' => $products, 'categories' => $taxonomies, 'categoriesSelect' => $taxonomies[0]->getTaxons() ));  
        }
	}	

	public function productSearchAction(Request $request)
	{
		// $_GET parameters
    	$search = $request->query->get('search');
    	$categoryId = $request->query->get('category');
		// print_r($search);
		// if(isset($categoryId)) echo 1;
		// else echo 0;
  //   	print_r($categoryId);die;
		$em = $this->getDoctrine()->getEntityManager();
		$connection = $em->getConnection();
		$statement = "";
		
		if($categoryId == "all" || !isset($categoryId) || empty($categoryId) )
		{
			
			$statement = $connection->prepare("SELECT translatable_id FROM sylius_product_translation WHERE name like concat('%', :search, '%') ");

		}
		else
		{
			$statement = $connection->prepare("SELECT translatable_id FROM sylius_product_translation , sylius_product_taxon WHERE sylius_product_translation.translatable_id = sylius_product_taxon.product_id and sylius_product_taxon.taxon_id = $id and name like concat('%', :search, '%')");
			$statement->bindValue('id', $categoryId);	
		}

		$statement->bindValue('search', $search);
		
		$statement->execute();
		$results = $statement->fetchAll();

		$ids = "";
		foreach ($results as $key => $value) {			
			$ids[] = $value["translatable_id"];
			//echo  $value["translatable_id"];
		}
		 
		$repositoryProduct = $this->container->get('sylius.repository.product');
		
        $products = $repositoryProduct->findById($ids);
       
        $userRepository = $this->container->get('sylius.repository.user');
        foreach ($products as $key => $value) {          
         $user = $userRepository->find($value->getUserCreated()->getId());
         $products[$key]->setUserCreated($user);
        	
          $user = "";
        }           
        //die();
        //find all categories
        $repositoryCategories = $this->container->get('sylius.repository.taxonomy');
        $taxonomies = $repositoryCategories->findAll();

		 if($request->isXmlHttpRequest()) {
            return new JsonResponse( array('products' => $products, 'categories' => $taxonomies, 'categoriesSelect' => $taxonomies[0]->getTaxons() ));
        }
        else
        {
          return $this->render('KulashareStoreFrontBundle:Default:index.html.twig', array('products' => $products, 'categories' => $taxonomies, 'categoriesSelect' => $taxonomies[0]->getTaxons() ));  
        }
	}

	/**
	 * @Security("has_role('ROLE_USER')")
	 */
    public function editProductAction(Request $request, $id)
	{		
		if (!$this->get('security.authorization_checker')->isGranted('ROLE_USER')) {
	        
	        return $this->redirect($this->generateUrl('sylius_user_security_login'));
	    }

	    $repositoryProduct = $this->container->get('sylius.repository.product');

	    $product = $repositoryProduct->findById($id);
	    //print_r($product);die;
	    $product[0]->setCurrentLocale("en_US");
	    $product[0]->setFallbackLocale("en_US");
	    #User Direction Data
    	$user = $this->getUser()->getCustomer();
//$userAddress="";
	    	 	$userAddress = $user->getStreetAddress1().', ';
	    	$userAddress .= $user->getCity().', ';
	    	$userAddress .= $user->getState().', ';
	    	$userAddress .= $user->getCountry();
	    	$address = urlencode($userAddress);
			$json = file_get_contents("http://maps.google.com/maps/api/geocode/json?address=$address&sensor=false");
			$decoded = json_decode($json);
			if (count($decoded) > 0) {
	    	$lat = $decoded->results[0]->geometry->location->lat;
	    	$long = $decoded->results[0]->geometry->location->lng;
			}
	        # ==== END USER DATA ====
	    $form = $this->createForm(new ProductType("Kulashare\Bundle\ProductBundle\Entity\Product"),
    							  $product[0]    							  
    							  );

    	// print_r($product->getAvailableVariants());
    	// die();

    	$session = $request->getSession();
    	$session->set('product', $product[0]);

        return $this->render('KulashareProductBundle:Default:index.html.twig', array('form' => $form->createView(), 'update'=>true, 'id'=>$product[0]->getId(), 'lat'=> $lat, 'long'=> $long));

	    //print_r($id);die;
	}



	/**
	 * @Security("has_role('ROLE_USER')")
	 */
    public function updateProductAction(Request $request,$id)
	{		
		if (!$this->get('security.authorization_checker')->isGranted('ROLE_USER')) {
	        
	        return $this->redirect($this->generateUrl('sylius_user_security_login'));
	    }

	    $repositoryProduct = $this->container->get('sylius.repository.product');

	    $product = $repositoryProduct->find($id);
	    // var_dump($product->hasVariants());
	    // die();
	    $em = $this->getDoctrine()->getManager();

	    //$product = new Product();
	    $product->setCurrentLocale("en_US");
	    $product->setFallbackLocale("en_US");
	  
	    $form = $this->createForm(new ProductType("Kulashare\Bundle\ProductBundle\Entity\Product"),
    							  $product);

	    $this->getRequest()->setLocale("en_US");
    // var_dump($this->getRequest());
    // die();

	    if ($request->isMethod('POST')) {
        	$form->submit($request->request->get($form->getName()));

			    if ($form->isValid()) {
			        $productData = $form->getData();

			        $user = $this->getUser();
			        $productData->setUserCreated($user);    	
			    	$target_dir = "/home/kulashare/public_html/dev/web/images/";
			    	if(file_exists($_FILES["sylius_product"]["tmp_name"]["masterVariant"]["images"][0]["file"])){
						$target_file = $target_dir . basename($_FILES["sylius_product"]["name"]["masterVariant"]["images"][0]["file"]);
						$uploadOk = 1;
						$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
						$check = getimagesize($_FILES["sylius_product"]["tmp_name"]["masterVariant"]["images"][0]["file"]);
					    if($check !== false)  $uploadOk = 1;
					   	else  $uploadOk = 0;
					   	// Check if file already exists
						 if (file_exists($target_file))  $uploadOk = 0;
						// Check file size
						 if ($_FILES["sylius_product"]["size"]["masterVariant"]["images"][0]["file"] > 500000)  $uploadOk = 0;
						// Allow certain file formats
						if($imageFileType != "jpg" 
							&& $imageFileType != "png" 
							&& $imageFileType != "jpeg"
							&& $imageFileType != "gif" ) $uploadOk = 0;
						// Check if $uploadOk is set to 0 by an error

				        //print_r($_POST);die;

						//$em->persist($productData);
				    	
					}
						
							$em->flush();
					    	$this->get('session')->getFlashBag()->add('notice','The product has been updated.');
				    	

		        	if (file_exists($_FILES["sylius_product"]["tmp_name"]["masterVariant"]["images"][0]["file"]) && $uploadOk != 0) {
						if(move_uploaded_file($_FILES["sylius_product"]["tmp_name"]["masterVariant"]["images"][0]["file"], $target_file)){
								$em = $this->getDoctrine()->getEntityManager();
								$connection = $em->getConnection();
								$statement = $connection->prepare("INSERT INTO sylius_product_variant_image (variant_id,path,created_at,updated_at) VALUES (:variant_id,:pad,NOW(),NOW())
												"  );
							$statement->bindValue('variant_id',$productData->getMasterVariant()->getId());
							$statement->bindValue('pad','/dev/web/images/'. basename($_FILES["sylius_product"]["name"]["masterVariant"]["images"][0]["file"]) );
							$statement->execute();
						}
					}

	    		}	
		}    
    	 return $this->redirect($this->generateUrl('kulashare_product_list'));
    	
	    
	}	

	/**
	 * @Security("has_role('ROLE_USER')")
	 */
    public function deleteProductAction(Request $request,$id)
	{		
		if (!$this->get('security.authorization_checker')->isGranted('ROLE_USER')) {
	        
	        return $this->redirect($this->generateUrl('sylius_user_security_login'));
	    }

	    //print_r($id);die;
    
	    $repositoryProduct = $this->container->get('sylius.repository.product');

	    $product = $repositoryProduct->find($id);

	     $em = $this->getDoctrine()->getManager();

	    $em->remove($product);
        $em->flush();

        $this->get('session')->getFlashBag()->add(
	            	'notice',
	            	'The product has been deleted.'
    	);

    	return $this->redirectToRoute('kulashare_product_list');
	}	

	/**
	 * @Security("has_role('ROLE_USER')")
	 */
    public function filterProductAction(Request $request)
	{		
		// $_GET parameters
    	$minPrice = $request->query->get('minPrice');
    	$maxPrice = $request->query->get('maxPrice');
    	$lat = $request->query->get('lat');
    	$lon = $request->query->get('lon');
    	$milesCompare =  $request->query->get('options');
		

		$em = $this->getDoctrine()->getEntityManager();
		$connection = $em->getConnection();
		$statement = "";
		if($milesCompare == "option_1")
		{
			$statement = $connection->prepare("SELECT product_id FROM sylius_product_variant as V, sylius_product as P 
										   WHERE price >= :minPrice AND price <= :maxPrice 
										   AND (SELECT (acos(sin(radians(P.latitud)) * sin(radians(:pLatitud)) + 
														cos(radians(P.latitud)) * cos(radians(:pLatitud)) * 
														cos(radians(P.longitud) - radians(:pLongitud))) * 3959
														) < 1
												)
											"  );
			$statement->bindValue('minPrice', $minPrice);
			$statement->bindValue('maxPrice', $maxPrice);
			$statement->bindValue('pLatitud', $lat);
			$statement->bindValue('pLongitud', $lon);
		}
		else
		{
			$statement = $connection->prepare("SELECT product_id FROM sylius_product_variant 
										   WHERE price >= :minPrice AND price <= :maxPrice 
										   AND (SELECT (acos(sin(radians(P.latitud)) * sin(radians(:pLatitud)) + 
														cos(radians(P.latitud)) * cos(radians(:pLatitud)) * 
														cos(radians(P.longitud) - radians(:pLongitud))) * 3959
														) > 1
												)
											"  );
			$statement->bindValue('minPrice', $minPrice);
			$statement->bindValue('maxPrice', $maxPrice);
			$statement->bindValue('pLatitud', $lat);
			$statement->bindValue('pLongitud', $lon);
		}
					
				
		$statement->execute();
		$results = $statement->fetchAll();
		$ids = "";

		foreach ($results as $key => $value) {			
			$ids[] = $value["product_id"];
		}

		$repositoryProduct = $this->container->get('sylius.repository.product');
		$products = "";
		if(!empty($ids) )
		{
			$products = $repositoryProduct->findById($ids);	
			$userRepository = $this->container->get('sylius.repository.user');
	        foreach ($products as $key => $value) {        	
	          $user = $userRepository->find($products[$key]->getUserCreated()->getId());
	          $products[$key]->setUserCreated($user);
	          $user = "";
	        } 
		}

		  

        //find all categories
        $repositoryCategories = $this->container->get('sylius.repository.taxonomy');
        $taxonomies = $repositoryCategories->findAll();

		 if($request->isXmlHttpRequest()) {
            return new JsonResponse( array('products' => $products, 'categories' => $taxonomies, 'categoriesSelect' => $taxonomies[0]->getTaxons() ));
        }
        else
        {
          return $this->render('KulashareStoreFrontBundle:Default:index.html.twig', array('products' => $products, 'categories' => $taxonomies, 'categoriesSelect' => $taxonomies[0]->getTaxons() ));  
        }
	}	

	public function productSearchbyLenderAction(Request $request)
	{
		// $_GET parameters
    	$lender = $request->query->get('lender');
		$repositoryProduct = $this->container->get('sylius.repository.product');

        $query = $repositoryProduct->createQueryBuilder('p')
            ->where('p.userCreated = :user')
            ->setParameter('user', $lender)            
            ->orderBy('p.createdAt', 'DESC')        
            ->getQuery();

        $queryBuilder = $repositoryProduct->createQueryBuilder('product');
         $queryBuilder->where('product.userCreated = :user')
            ->setParameter('user', $lender)    
            ->orderBy('product.createdAt', 'DESC');

        
        $products = $query->getResult();  
        $userRepository = $this->container->get('sylius.repository.user');
        foreach ($products as $key => $value) {        	
	          $user = $userRepository->find($products[$key]->getUserCreated()->getId());
	          $products[$key]->setUserCreated($user);
	          $user = "";
	        }         
        //find all categories
        $repositoryCategories = $this->container->get('sylius.repository.taxonomy');
        $taxonomies = $repositoryCategories->findAll();

		 if($request->isXmlHttpRequest()) {
            return new JsonResponse( array('products' => $products, 'categories' => $taxonomies, 'categoriesSelect' => $taxonomies[0]->getTaxons() ));
        }
        else
        {
          return $this->render('KulashareStoreFrontBundle:Default:index.html.twig', array('products' => $products, 'categories' => $taxonomies, 'categoriesSelect' => $taxonomies[0]->getTaxons() ));  
        }
	}
	 public function showPreviewAction(Request $request)
	{	
		if (!$this->get('security.authorization_checker')->isGranted('ROLE_USER')) {
	        
	        return $this->redirect($this->generateUrl('sylius_user_security_login'));
	    }

    	$session = $request->getSession();

	    $product = $session->get('product'); // TRAE EL PRODUCT
	    //print_r($request->request->get('sylius_product'));die;



	    $product->setCurrentLocale("en_US");
	    $product->setFallbackLocale("en_US");
	    #User Direction Data
    	$user = $this->getUser()->getCustomer();

	    	$userAddress = $user->getStreetAddress1().', ';
	    	$userAddress .= $user->getCity().', ';
	    	$userAddress .= $user->getState().', ';
	    	$userAddress .= $user->getCountry();
	    	$address = urlencode($userAddress);
			$json = file_get_contents("http://maps.google.com/maps/api/geocode/json?address=$address&sensor=false");
			$decoded = json_decode($json);
			if (count($decoded) > 0) {
	    		$lat = $decoded->results[0]->geometry->location->lat;
	    		$long = $decoded->results[0]->geometry->location->lng;
			}
	    	$temp = $request->request->get('sylius_product');
	    	$product->setUserCreated($this->getUser());
			$product->setName($temp['translations']['en_US']['name']);
			$product->setDescription($temp['translations']['en_US']['description']);
			$price =round($temp['masterVariant']['price']*100);
			
			$product->setPrice((int)$price);
			$product->setTypeRental($temp['typeRental']);
			$product->setShortDescription($temp['translations']['en_US']['shortDescription']);
			$product->setLatitud($lat);
			$product->setLongitud($long);
			$product->setUserCreated($this->getUser());
			

			
			

		
	   

		  $repositoryCategories = $this->container->get('sylius.repository.taxonomy');
        $taxonomies = $repositoryCategories->findAll();			
        $content = $this->renderView('KulashareProductBundle:Default:product_temp.html.twig', array('product' => $product, 'categoriesSelect' => $taxonomies[0]->getTaxons()));
        return new Response($content);
       	
    	
	}

}
