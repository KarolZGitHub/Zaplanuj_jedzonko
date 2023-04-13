<%--
  Created by IntelliJ IDEA.
  User: adrian
  Date: 13.04.2023
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/logged/header.jsp" %>
<%@ include file="/logged/sideMenu.jsp" %>

<div class="m-4 p-4 width-medium">
    <div class="dashboard-header m-4">
        <div class="dashboard-menu">
            <div class="menu-item border-dashed">
                <a href="">
                    <i class="far fa-plus-square icon-plus-square"></i>
                    <span class="title">dodaj przepis</span>
                </a>
            </div>
            <div class="menu-item border-dashed">
                <a href="">
                    <i class="far fa-plus-square icon-plus-square"></i>
                    <span class="title">dodaj plan</span>
                </a>
            </div>
            <div class="menu-item border-dashed">
                <a href="">
                    <i class="far fa-plus-square icon-plus-square"></i>
                    <span class="title">dodaj przepis do planu</span>
                </a>
            </div>
        </div>

        <div class="dashboard-alerts">
            <div class="alert-item alert-info">
                <i class="fas icon-circle fa-info-circle"></i>
                <span class="font-weight-bold">Liczba przepisów: 1</span>
            </div>
            <div class="alert-item alert-light">
                <i class="far icon-calendar fa-calendar-alt"></i>
                <span class="font-weight-bold">Liczba planów: 1</span>
            </div>
        </div>
    </div>
    <div class="m-4 p-4 border-dashed">
        <h2 class="dashboard-content-title">
            <span>Ostatnio dodany plan:</span> Plan jak u mamy
        </h2>
        <table class="table">
            <thead>
            <tr class="d-flex">
                <th class="col-2">Poniedziałek</th>
                <th class="col-8"></th>
                <th class="col-2"></th>
            </tr>
            </thead>
            <tbody>
            <tr class="d-flex">
                <td class="col-2">śniadanie</td>
                <td class="col-8">płatki owsiane z jagodami i komosą ryżową</td>
                <td class="col-2"><button type="button" class="btn btn-primary rounded-0">Szczegóły</button></td>
            </tr>
            <tr class="d-flex">
                <td class="col-2">śniadanie</td>
                <td class="col-8">kanapka z pastą rybną</td>
                <td class="col-2"><button type="button" class="btn btn-primary rounded-0">Szczegóły</button></td>
            </tr>
            <tr class="d-flex">
                <td class="col-2">obiad</td>
                <td class="col-8">zupa pomidorowa</td>
                <td class="col-2"><button type="button" class="btn btn-primary rounded-0">Szczegóły</button></td>
            </tr>
            </tbody>
        </table>
        <table class="table">
            <thead>
            <tr class="d-flex">
                <th class="col-2">Wtorek</th>
                <th class="col-8"></th>
                <th class="col-2"></th>
            </tr>
            </thead>
            <tbody>
            <tr class="d-flex">
                <td class="col-2">śniadanie</td>
                <td class="col-8">płatki owsiane z jagodami i komosą ryżową</td>
                <td class="col-2"><button type="button" class="btn btn-primary rounded-0">Szczegóły</button></td>
            </tr>
            <tr class="d-flex">
                <td class="col-2">drugie śniadanie</td>
                <td class="col-8">pączki</td>
                <td class="col-2"><button type="button" class="btn btn-primary rounded-0">Szczegóły</button></td>
            </tr>
            <tr class="d-flex">
                <td class="col-2">obiad</td>
                <td class="col-8">schabowy w panierce</td>
                <td class="col-2"><button type="button" class="btn btn-primary rounded-0">Szczegóły</button></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>


<%@ include file="/logged/footer.jsp" %>
