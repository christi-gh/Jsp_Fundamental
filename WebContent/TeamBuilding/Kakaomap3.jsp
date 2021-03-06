<%@ page pageEncoding="utf-8" %>
<!-- ajax_proxy.html -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajax Get</title>
    <script type="text/javascript" src="../JS/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c50f6c0f91e761205f077b489f5b2c52"></script>
        <!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c50f6c0f91e761205f077b489f5b2c52&libraries=services,clusterer,drawing"></script>
    
    <script>
   

        $(function(){
                 $("#testClick").click(function(){
                        console.log("테스트 클릭 성공");
                    });
                 
            $('#btn').click(function(){
                    var address = encodeURIComponent('http://openapi.seoul.go.kr:8088/6c4d744372746a72313236744a785a54/json/bikeList/1/5/');
                        
                $.ajax({
                    url : 'proxy.jsp?url='+address,
                    type :'GET',
                    dataType : 'json',
                    error : function(){
                        alert('error');
                    },
                    success : function(obj){
                            var msg = "";
                            var a1=new Array();
                            var b1=new Array();
                            var name1= new Array();
                        /* $("#sel").append(JSON.stringify(obj)); */
                        var jsonObj = JSON.stringify(obj);
                        msg +="</tr>";
                                                msg +="</thead>";
                                                msg +="<tbody>";
                                                for(var i in obj.rentBikeStatus.row){
                       a1[i]=obj.rentBikeStatus.row[i].stationLatitude;
                       b1[i]=obj.rentBikeStatus.row[i].stationLongitude;
                      name1[i] = obj.rentBikeStatus.row[i].stationName;
                      
                      var msg1= "";
                      msg1+="<body>"+"<button id=name1"+i+">"+name1[i]+"</button>"+"</body>";
                      
                                $("#sel").append(msg1);
                                
                      
                      msg +="<td><a href='https://map.kakao.com/link/map/"+a1[i]+","+b1[i]+"' target='_blank'>"+name1[i]+"</a></td>";
                      
                      msg += "</tr>";
                      
                      
                     
                      
                      
                      
                      
                     
                              
                              
                              
                              
                                                } //반복문 끝
                                                
                                                
                                                
                                                console.log(name1[1]);
                                                
                                                
                      msg +="</tbody>";
                                                msg +="</table>";
                                                msg +="</div>"; 
                                                
                                                
                                                
                                                $("#sel").append(msg);
                                                for (var i = 0; i < name1.length; i++) {
                                                    (function call(j) {
                                                            $("#name1"+j).click(function () {
                                                                    var container = document.getElementById('map');
                                                              var options = {
                                                                      center: new kakao.maps.LatLng(a1[j], b1[j]),
                                                                      level: 3
                                                              };
                                                              
                                                              var map = new kakao.maps.Map(container, options);
                                                              
                                                              var coords=new daum.maps.LatLng(a1[j],b1[j]);
                                                              
                                                               var marker = new daum.maps.Marker({
                                                             map:map,
                                                             position:coords
                                                     });
                                                        },);
                                                    })(i);
                                                }
                                                
                                                var c;
                                                
                                                
                                                $("#name1"+0).click(function(){
                                                         var container = document.getElementById('map');
                                                      var options = {
                                                              center: new kakao.maps.LatLng(a1[0], b1[0]),
                                                              level: 3
                                                      };
                                                      
                                                      var map = new kakao.maps.Map(container, options);
                                                      
                                                      var coords=new daum.maps.LatLng(a1[0],b1[0]);
                                                      
                                                       var marker = new daum.maps.Marker({
                                                     map:map,
                                                     position:coords
                                             });
                                                       
                                                       
                                                      
                                    });
                                                
                                                
                  
                       
                        
                        
                        
                                                
                                                        
                    }
                    
                    
                });

            });
        });



    </script>
</head>
<body>
    <button id="btn">가져오기</button>
    <div>
      <span id="testClick">
     test입니다.
     </span>
     </div>
   
    <div id="sel">
<div id="map" style="width:500px;height:400px;"></div>
    </div>
</body>
</html>