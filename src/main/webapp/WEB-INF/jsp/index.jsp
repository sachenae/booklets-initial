<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <title>document</title>
</head>
<body>
<div class="bg">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-12 bg-info">
                <a class="text-white bg-dark"><h1>[BookLets]</h1></a>
            </div>
            <div class="col-md-6 col-4 d-flex flex-last flex-md-unordered bg-faded px-0">
                <div class="nav flex-md-row flex-column ml-md-auto" id="top-links">
                    <a class="nav-item nav-link" href="#">Guidelines</a>
                    <a class="nav-item nav-link" href="#">User Profile</a>
                </div>
            </div>
            <div class="col-9 flex-md-last">


                <div>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th colspan="2" >Income and Receivables Statement</th>
                    </tr>
                    <tr>
                        <th scope="col">Tr. ID</th>
                        <th scope="col">Date</th>
                        <th scope="col">Received From</th>
                        <th scope="col">Description</th>
                        <th scope="col">Payment Mode</th>
                        <th scope="col">Amount</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var = "list" items = "${lists}">
                        <tr>
                            <td>${list.id}</td>
                            <td>${list.date}</td>
                            <td>${list.receivedFrom}</td>
                            <td>${list.description}</td>
                            <td>${list.mode}</td>
                            <td>${list.amount}</td>
                            <td>
                                <a href="/income_delete/${list.id}">
                                <button type="button" class="close" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                            </button>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                </div>



            </div>
            <div class="col-3 flex-first flex-md-unordered bg-faded px-0">
                <nav class="nav flex-column">

                    <a href="#menu1" class="list-group-item collapsed" data-toggle="collapse" data-parent="#sidebar" aria-expanded="false"><span class="hidden-sm-down">New transaction</span></a>
                    <div class="collapse" id="menu1">
                        <a href="#" class="list-group-item" data-parent="#menu1" type="button" class="btn btn-primary" data-toggle="modal" data-target="#receiveForm">Income</a>
                        <a href="#" class="list-group-item" data-parent="#menu1" type="button" class="btn btn-primary" data-toggle="modal" data-target="#payForm">Expenses</a>
                    </div>

                    <a href="#menu2" class="list-group-item collapsed" data-toggle="collapse" data-parent="#sidebar" aria-expanded="false"><span class="hidden-sm-down">Assets</span></a>
                    <div class="collapse" id="menu2">
                        <a href="#" class="list-group-item" data-parent="#menu2">Sales</a>
                        <a href="#" class="list-group-item" data-parent="#menu2">Purchase</a>
                    </div>

                    <a class="nav-item nav-link" href="#">General Statement</a>
                    <a class="nav-item nav-link" href="#">Balance Sheet</a>
                    <a class="nav-item nav-link" href="#">Graphs</a>
                </nav>
            </div>
        </div>
    </div>
</div>




<!-- Modal Recivables -->

<div class="modal fade" id="receiveForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Receivables</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!--form -->
                <form method="post" action="/income_save">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Received From</span>
                        </div>
                        <input type="text" name="receivedfrom" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Date</span>
                        </div>
                        <input type="date" name="date" class="form-control" aria-label="date">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Amount</span>
                        </div>
                        <input name="amount" type="number" min="0" placeHolder="0.00" step="0.01" class="form-control" aria-label="Amount">
                        <div class="input-group-append">
                            <span class="input-group-text">&euro;</span>

                        </div>
                    </div>

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" >Payment Method</label>
                        </div>
                        <select name="mode" class="custom-select" >
                            <option selected>Choose...</option>
                            <option value="Bank Transfer">Bank Transfer</option>
                            <option value="Paypal">PayPal</option>
                            <option value="Cash">Cash</option>
                            <option value="Cash">Credit Card</option>
                        </select>
                    </div>

                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Description</span>
                        </div>
                        <textarea name="description" class="form-control" aria-label="With textarea"></textarea>
                    </div>

            </div>
            <div class="modal-footer">

                <input type = "submit" value = "Save">
            </div>
            </form>
        </div>
    </div>
</div>



<!-- Modal Payables -->
<div class="modal fade" id="payForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Payables and Expenses</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!--form -->
                <form method="post" action="/expense_save">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Paid To</span>
                        </div>
                        <input type="text" name="receivedfrom" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Date</span>
                        </div>
                        <input type="date" name="date" class="form-control" aria-label="date">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Amount</span>
                        </div>
                        <input name="amount" type="number" min="0" placeHolder="0.00" step="0.01" class="form-control" aria-label="Amount">
                        <div class="input-group-append">
                            <span class="input-group-text">&euro;</span>

                        </div>
                    </div>

                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text">Payment Method</label>
                        </div>
                        <select name="mode" class="custom-select" >
                            <option selected>Choose...</option>
                            <option value="Bank Transfer">Bank Transfer</option>
                            <option value="Paypal">PayPal</option>
                            <option value="Cash">Cash</option>
                        </select>
                    </div>

                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Description</span>
                        </div>
                        <textarea name="description" class="form-control" aria-label="With textarea"></textarea>
                    </div>

            </div>
            <div class="modal-footer">

                <input type = "submit" value = "Save">
            </div>
            </form>
        </div>
    </div>
</div>


</body>
</html>