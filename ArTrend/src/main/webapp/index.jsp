<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <link href="./css/main.css" rel="stylesheet">
    <link href="./css/header.css" rel="stylesheet">
    
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
  </head>
  <body>

      <main>
        <header>
            <nav class="navbar navbar-expand-sm navbar-light">
                <div class="container-fluid">
                    <!-- src에 로고 넣기 -->
                    <a class="navbar-brand" href="#">
                      <img src="./images/img_logo.png" alt="ArTrend" width="200" height="80">
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                      </button>
                  
                  <!-- 네비게이션 -->
                  <div class="collapse navbar-collapse" id="navbarsExample03">
                      <ul class="navbar-nav me-auto mb-2 mb-sm-0">
                              <form role="search">
                                  <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                              </form>
  
                              <!-- 로그인 전 화면 네비게이션 메뉴 -->
                              <li class="nav-item">
                                  <button class="signin_btn">
                                      <a class="nav-link active" aria-current="page" href="#"> 회원가입 </a>
                                  </button>
                                  
                              </li>
                              <li class="nav-item">
                                  <button class="login_btn">
                                      <a class="nav-link active" aria-current="page" href="#"> 로그인 </a>
                                  </button>
                                  
                              </li>
                             
  
                              <!-- 로그인 후 화면 네비게이션 메뉴 -->
                              <li class="nav-item">
                                  <a class="nav-link active" aria-current="page" href="#"> 🏠 </a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="#"> ⭐️ </a>
                              </li>
                              
                              <!-- 알림 버튼 -->
                              <li class="nav-item">
                              <!-- Button trigger modal -->
                                  <button type="button" class="btn position-relative" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                      🔔
                                      <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                          2
                                          <span class="visually-hidden">unread messages</span>
                                        </span>
                                  </button>
                                  
                                  <!-- Modal -->
                                  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                      <div class="modal-dialog">
                                      <div class="modal-content">
                                          <div class="modal-header">
                                          <h3 class="modal-title fs-5" id="exampleModalLabel"> 알림 목록 </h3>
                                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                          </div>
                                          <div class="modal-body">
                                          <p><small>
                                              현아 님이 좋 아 요 를 눌ㄹ ㅓㅅ
                                              
                                          </small> 
                                      </p>
                                          <p> 현아 님이 좋 아 요 를 눌ㄹ ㅓㅅ</p>
                                          <p> 현아 님이 좋 아 요 를 눌ㄹ ㅓㅅ</p>
                                          <p> 현아 님이 좋 아 요 를 눌ㄹ ㅓㅅ</p>
                                          <p> 현아 님이 좋 아 요 를 눌ㄹ ㅓㅅ</p>
                                          </div>
                                          <div class="modal-footer">
                                          <button type="button" class="btn" data-bs-dismiss="modal">Close</button>
                                          </div>
                                      </div>
                                      </div>
                                  </div>
                              </li>
                              
                              <!-- Nav 마이페이지 토글 목록 -->
                              <li class="nav-item dropdown">
                                  <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false"> 👤 </a>
                                  <ul class="dropdown-menu">
                                      <li><a class="dropdown-item" href="#"> 내갤러리 </a></li>
                                      <li><a class="dropdown-item" href="#"> 정보수정</a></li>
                                      <li><a class="dropdown-item" href="#"> 로그아웃 </a></li>
                                  </ul>
                              </li>
                          </ul>
                      </div>
                  </div>
              </nav>
        </header>
          
            <div class="container text-center">
                <!-- 첫번째 줄 -->
                <div class="row">
                  <div class="col-lg-4 col-md-6">
                    <div class="card text-bg-dark">
                        <a href="#">
                            <img src="./images/126072DB-BE6C-477E-BCB8-C56931D6FDF2_4_5005_c.jpeg" class="card-img" alt="...">

                        </a>
                        <div class="card-img-overlay">
                          <p class="card-text"><medium> 무제  :  김현아 </medium></p>
                        </div>
                    </div>
                  </div>

                  <div class="col-lg-4 col-md-6">
                    <div class="card text-bg-dark">
                        <img src="./images/126072DB-BE6C-477E-BCB8-C56931D6FDF2_4_5005_c.jpeg" class="card-img" alt="...">
                        <div class="card-img-overlay">
                          <p class="card-text"><small>Last updated 3 mins ago</small></p>
                        </div>
                    </div>
                  </div>
                  
                  <div class="col-lg-4 col-md-6">
                      <div class="card text-bg-dark">
                          <img src="./images/126072DB-BE6C-477E-BCB8-C56931D6FDF2_4_5005_c.jpeg" class="card-img" alt="...">
                          <div class="card-img-overlay">
                            <p class="card-text"><small>Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                    </div>
                  <div class="col-lg-4 col-md-6">
                      <div class="card text-bg-dark">
                          <img src="./images/126072DB-BE6C-477E-BCB8-C56931D6FDF2_4_5005_c.jpeg" class="card-img" alt="...">
                          <div class="card-img-overlay">
                              <p class="card-text"><small>Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                    </div>
               
                  <div class="col-lg-4 col-md-6">
                    <div class="card text-bg-dark">
                        <img src="./images/126072DB-BE6C-477E-BCB8-C56931D6FDF2_4_5005_c.jpeg" class="card-img" alt="...">
                        <div class="card-img-overlay">
                          <p class="card-text"><small>Last updated 3 mins ago</small></p>
                        </div>
                    </div>
                  </div>

                  <div class="col-lg-4 col-md-6">
                    <div class="card text-bg-dark">
                        <img src="./images/126072DB-BE6C-477E-BCB8-C56931D6FDF2_4_5005_c.jpeg" class="card-img" alt="...">
                        <div class="card-img-overlay">
                          <p class="card-text"><small>Last updated 3 mins ago</small></p>
                        </div>
                    </div>
                  </div>
                  
                  <div class="col-lg-4 col-md-6">
                      <div class="card text-bg-dark">
                          <img src="./images/126072DB-BE6C-477E-BCB8-C56931D6FDF2_4_5005_c.jpeg" class="card-img" alt="...">
                          <div class="card-img-overlay">
                              <p class="card-text"><small>Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                    </div>
                  <div class="col-lg-4 col-md-6">
                      <div class="card text-bg-dark">
                          <img src="./images/126072DB-BE6C-477E-BCB8-C56931D6FDF2_4_5005_c.jpeg" class="card-img" alt="...">
                          <div class="card-img-overlay">
                              <p class="card-text"><small>Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                    </div>
                </div>

                
            </div>
        </div>
    </div>

        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    </body>
 </html>