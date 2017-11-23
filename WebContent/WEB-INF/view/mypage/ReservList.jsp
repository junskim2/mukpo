<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="plugin/bootstrap/bootstrap.css" rel="stylesheet">
<link href="/plugin/bootstrap/minwoo.css" rel="stylesheet">
</head>
<style>

</style>
<body>
<div class="container">
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>
 <div class="mail-box">
                  <aside class="lg-side">
                      <div class="inbox-body">
                         <div class="mail-option">
                             <div class="chk-all">
                                 <input type="checkbox" class="mail-checkbox mail-group-checkbox">
                                 <div class="btn-group">
                                     <a data-toggle="dropdown" href="#" class="btn mini all" aria-expanded="false">
                                         All
                                         <i class="fa fa-angle-down "></i>
                                     </a>
                                     <ul class="dropdown-menu">
                                         <li><a href="#"> None</a></li>
                                         <li><a href="#"> Read</a></li>
                                         <li><a href="#"> Unread</a></li>
                                     </ul>
                                 </div>
                             </div>

                             <div class="btn-group">
                                 <a data-original-title="Refresh" data-placement="top" data-toggle="dropdown" href="#" class="btn mini tooltips">
                                     <i class=" fa fa-refresh"></i>
                                 </a>
                             </div>
                             <div class="btn-group hidden-phone">
                                 <a data-toggle="dropdown" href="#" class="btn mini blue" aria-expanded="false">
                                     More
                                     <i class="fa fa-angle-down "></i>
                                 </a>
                                 <ul class="dropdown-menu">
                                     <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
                                     <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
                                     <li class="divider"></li>
                                     <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                 </ul>
                             </div>
                             <div class="btn-group">
                              
                                 <ul class="dropdown-menu">
                                     <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a></li>
                                     <li><a href="#"><i class="fa fa-ban"></i> Spam</a></li>
                                     <li class="divider"></li>
                                     <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a></li>
                                 </ul>
                             </div>

                             <ul class="unstyled inbox-pagination">
                                 <li><span>1-50 of 234</span></li>
                                 <li>
                                     <a class="np-btn" href="#"><i class="fa fa-angle-left  pagination-left"></i></a>
                                 </li>
                                 <li>
                                     <a class="np-btn" href="#"><i class="fa fa-angle-right pagination-right"></i></a>
                                 </li>
                             </ul>
                         </div>
                          <table class="table table-inbox table-hover">
                            <tbody>
                              <tr class="unread">
                                  
                                   <td class="inbox-small-cells"></td>
                                  <td class="view-message dont-show">주문일시</td>
                                  <td class="view-message dont-show">업소명</td> 
                                  <td class="view-message dont-show">주문번호</td> 
                                  <td class="view-message dont-show">주문금액</td>
                                  <td class="view-message inbox-small-cells">주문 예약상태</td>
                                  <td class="view-message dont-show">리뷰</td>
                              </tr>
                              <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="view-message dont-show">2017/12/25</td>
                                  <td class="view-message dont-show">TEST_NUMBER</td> 
                                  <td class="view-message dont-show">MINGKY!</td> 
                                  <td class="view-message dont-show">59,590</td>
                                  <td class="view-message inbox-small-cells">배송완료</td>
                                  <td class="view-message dont-show"><input type="button" value="리뷰 남기기"/></td>
                              </tr>
                                 <tr class="">
                                  <td class="inbox-small-cells">
                                      <input type="checkbox" class="mail-checkbox">
                                  </td>
                                  <td class="view-message dont-show">2017/12/25</td>
                                  <td class="view-message dont-show">TEST_NUMBER</td> 
                                  <td class="view-message dont-show">MINGKY!</td> 
                                  <td class="view-message dont-show">59,590</td>
                                  <td class="view-message inbox-small-cells">배송완료</td>
                                  <td class="view-message dont-show"><input type="button" value="리뷰 남기기"/></td>
                              </tr>
                          </tbody>
                          </table>
                      </div>
                  </aside>
              </div>
</div>
</body>
</html>