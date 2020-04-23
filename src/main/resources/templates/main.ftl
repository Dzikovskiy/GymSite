<#import "parts/common.ftl" as c>
<#import "parts/footer.ftl" as f>
<@c.page>

    <!--Carousel header-->
    <div id="carouselExampleIndicators" class="carousel slide mb-2 mt-5 pt-2" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/static/img/carousel_4.jpg" class="d-block w-100">
            </div>
            <div class="carousel-item">
                <img src="/static/img/carousel_1.jpg" class="d-block w-100">
            </div>
            <div class="carousel-item">
                <img src="/static/img/carousel_5.jpg" class="d-block w-100">
            </div>
            <div class="carousel-item">
                <img src="/static/img/carousel_6.jpg" class="d-block w-100">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!--Welcome-->
    <div class="container-fluid mt-5 mb-5 pb-3 pt-5 ">
        <div class="main-header mb-5" style="color: #1B1D28">Добро пожаловать на сайт Gym
        </div>
        <img src="/static/img/gym_logo.png" width="300" height="300"
             class="text-center mx-auto d-block mb-5" alt="">
    </div>

    <!--About-->
    <div class="container mt-5">
        <div class="row mt-5">
            <div class="col">
                <div class="login-header mb-3">ФИТНЕС НОВОГО ПОКОЛЕНИЯ</div>
                <ul class="list-unstyled">
                    <li>Мы любим спорт, он делает нас сильнее, увереннее, спокойнее. Мы любим спортивных людей и хотим,
                        чтобы их было больше, красивых, привлекательных. Мы верим, что спорт доступен каждому. Поэтому
                        мы создали фитнес-клуб в котором нет ничего лишнего, за что приходится переплачивать.
                    </li>
                    <li class="mt-4">
                        <ul>
                            <li>Тренажерный зал в Минске открыт круглосуточно</li>
                            <li>Биометрическая система обслуживания по отпечатку пальца</li>
                            <li>Без ограничения посещений и времени</li>
                            <li>Продажа абонементов через интернет или терминалы, которые установлены в клубе</li>
                            <li>Рядом бесплатный паркинг</li>
                            <li>Более 90 профессиональных тренажеров</li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col">
                <img src="/static/img/block-girl.jpg" width="600" height="400"
                     class="text-center rounded mx-auto d-block mb-5" alt="">
            </div>
        </div>
    </div>

    <!--Qualities-->
    <div class="container-fluid my-5 py-5 bg-light">
        <div class="container my-5 bg-light">
            <div class="row mt-5">
                <div class="col">
                    <div class="main-header mb-4">ПРИЧИНЫ ПРИСОЕДИНИТЬСЯ:</div>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col">
                    <img src="/static/img/24_7.png"
                         class="text-center rounded mx-auto d-block mb-4" alt="">
                    <div class="login-header mb-1">РАБОТАЕМ 24/7</div>
                    Клуб открыт 24 часа в сутки, приходи в любое время: снимай стресс или просто занимайся в
                    удовольствие.
                </div>
                <div class="col">
                    <img src="/static/img/parking.png"
                         class="text-center rounded mx-auto d-block mb-4" alt="">
                    <div class="login-header mb-1">БЕСПЛАТНАЯ ПАРКОВКА</div>
                    Не знаешь, где оставить машину? Бесплатная парковка ждет тебя, но помни: это все-таки центр города.
                </div>
                <div class="col">
                    <img src="/static/img/equipment.png"
                         class="text-center rounded mx-auto d-block mb-4" alt="">
                    <div class="login-header mb-1">ПРОФЕССИОНАЛЬНЫЕ ТРЕНАЖЕРЫ</div>
                    Life Fitness, Teсhnogym, Hammer Strengh, TRX… Не знаешь, что это? Приходи и узнай в наш тренажерный
                    зал!
                </div>
                <div class="col">
                    <img src="/static/img/biceps.png"
                         class="text-center rounded mx-auto d-block mb-4" alt="">
                    <div class="login-header mb-1">НИКАКИХ ОГРАНИЧЕНИЙ</div>
                    Утром разминка, днем штанга, вечером пробежка? Без проблем, посещения не ограничены – приходи
                    сколько
                    хочешь!
                </div>
            </div>
        </div>
    </div>

    <!--Reviews-->
    <div class="container my-5 pb-5">
        <div class="row mt-5">
            <div class="col">
                <div class="main-header mb-5 pb-3">Отзывы о нас:</div>
            </div>
        </div>
        <div class="card-deck">
            <div class="card">
                <img src="/static/img/trainer_4.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Дуэйн</h5>
                    <p class="card-text">Несмотря на впечатляющие размеры, достаточно уютен. Хожу сюда всего несколько
                        месяцев, но уже замечаю за собой тягу к этому месту. Администраторы улыбчивы и приятны в
                        общении. Тренеров много.
                        Адекватный ценник.</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
            </div>
            <div class="card">
                <img src="/static/img/trainer_2.jpeg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Крис</h5>
                    <p class="card-text">Думаю на данный момент прошло достаточно времени чтобы оставить отзыв о фитнес
                        клубе gym. В связи с тем, что по образованию и месту работы я тренер, то мне свойственно
                        обращать внимание на определённые вещи, которые не видны другим. Зал 10\10</p>
                    <p class="card-text"><small class="text-muted">Last updated 7 mins ago</small></p>
                </div>
            </div>
            <div class="card">
                <img src="/static/img/trainer_3.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Джулия</h5>
                    <p class="card-text">Хожу в этот зал со времени его открытия. Сам зал очень нравится, твердая
                        четверка, очень приятная цена за такое оборудование и обслуживание. Вряд ли найдете такой же
                        хороший зал за такую цену. Мелкие неприятности время от времени возникают, но в целом все на
                        уровне: зал убирается, персонал всегда здоровается, дежурный инструктор всегда поможет с
                        упражнениями и покажет как их правильно делать. </p>
                    <p class="card-text"><small class="text-muted">Last updated 47 mins ago</small></p>
                </div>
            </div>
        </div>
    </div>

    <@f.footer/>
</@c.page>