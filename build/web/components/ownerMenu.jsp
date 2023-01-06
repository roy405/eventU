<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="nav">
    <h1>Star</h1>
    <h1 id="trust">Trust</h1>
        <ul>
            <li class="item1${pageContext.request.requestURI eq '/StarTrust/adminMessage.jsp' ? ' active' : ''}">
                <a href="AdminMessage"><img src="img/message.png" alt="Inbox"></a>
                <a href="AdminMessage">Inbox</a>
            </li>         
            <li class="item2${pageContext.request.requestURI eq '/StarTrust/createAccount.jsp' ? ' active' : ''}">
                <a href="CreateAccount"><img src="img/account.png" alt="Account"></a>
                <a href="CreateAccount">Create Account</a>
            </li>
             <li class="item3${pageContext.request.requestURI eq '/StarTrust/interestRates.jsp' ? ' active' : ''}">
                <a href="InterestRates"><img src="img/interest_rate.png" alt="Intrest Rates"></a>
                <a href="InterestRates">Interest Rates</a>
            </li>
            <li class="item4${pageContext.request.requestURI eq '/StarTrust/accountApproval.jsp' ? ' active' : ''}">
                <a href="AccountApproval"><img src="img/account_approval.png" alt="Account Approval"></a>
                <a href="AccountApproval">Account Approval</a>
            </li>   
            <li class="item5${pageContext.request.requestURI eq '/StarTrust/activityLog.jsp' ? ' active' : ''}" id="last">
                <a href="ActivityLog"><img src="img/activity_log.png" alt="Activity Log"></a>
                <a href="ActivityLog">Activity Log</a>
            </li>
        </ul>
</div>