<!-- Sidebar -->
<section class="col-sm-4">
  <wallet-balance-drtv></wallet-balance-drtv>
  <hr />
  <div class="well">
    <p translate="sidebar_donation"> UnlimitedGasWallet is a free, open-source service dedicated to your privacy and security. The more donations we receive, the more time we spend creating new features, listening to your feedback, and giving you what you want. We are just two people trying to change the world. Help us?</p>
    <a class="btn btn-primary btn-block"  data-toggle="modal" data-target="#sendTransaction"  ng-click="sendDonate()" translate="sidebar_donate">DONATE</a>
    <div class="text-success text-center marg-v-sm" ng-show="tx.donate" translate="sidebar_thanks"> THANK YOU!!! </div>
  </div>
</section>
<!-- / Sidebar -->



<!-- Content -->
<section class="col-sm-8">

  <div class="row form-group" ng-show="tx.readOnly">
    <div class="alert alert-danger col-xs-12 clearfix" ng-show="wallet!=null && tx.readOnly && !hasEnoughBalance()">
      <strong>Warning! You do not have enough funds to complete this swap.</strong> <br />
      Please add more funds or access a different wallet.
    </div>
  </div>

  <!-- To Address -->
  <div class="row form-group">
    <h4 class="col-xs-12" translate="SEND_trans">Send Transaction</h4>
  </div>

  <div class="row form-group">
    <address-field placeholder="0x7cB57B5A97eAbe94205C07890BE4c1aD31E486A8" var-name="tx.to"></address-field>
  </div>

  <!-- Amount to Send -->
  <label translate="SEND_amount">Amount to Send:</label>
  <div class="input-group">
    <input class="form-control" type="text" placeholder="{{ 'SEND_amount_short' | translate }}" ng-model="tx.value" ng-disabled="tx.readOnly" ng-class="Validator.isPositiveNumber(tx.value) ? 'is-valid' : 'is-invalid'"/>
    <div class="input-group-btn">
      <a class="btn btn-default dropdown-toggle" class="dropdown-toggle" ng-click="dropdownAmount = !dropdownAmount" ng-class="dropdownEnabled ? '' : 'disabled'">
        {{unitReadable}}<i class="caret"></i>
      </a>
      <ul class="dropdown-menu dropdown-menu-right" ng-show="dropdownAmount && !tx.readOnly">
        <li><a ng-class="{true:'active'}[tx.sendMode=='ether']" ng-click="setSendMode('ether')">{{ajaxReq.type}}</a></li>
        <li ng-repeat="token in wallet.tokenObjs track by $index" ng-show="token.balance!=0 && token.balance!='loading' || token.type!=='default' || tokenVisibility=='shown'">
          <a ng-class="{true:'active'}[unitReadable == token.getSymbol()]" ng-click="setSendMode('token', $index, token.getSymbol())"> {{token.getSymbol()}} </a>
        </li>

      </ul>
    </div>
  </div>
  <p><a ng-click="transferAllBalance()" ng-hide="tx.readOnly"><span class="strong" translate="SEND_TransferTotal">Send Entire Balance</span></a></p>
  <!-- / Amount to Send -->

  <!-- Gas -->
  <label translate="TRANS_gas"> Gas: </label>
  <input class="form-control" type="text" placeholder="21000" ng-model="tx.gasLimit" ng-class="Validator.isPositiveNumber(tx.gasLimit) ? 'is-valid' : 'is-invalid'" ng-change="gasLimitChanged=true"/>
  <!-- / Gas -->

  <!-- Advanced Option Panel -->
  <div ng-show="tx.sendMode=='ether'">
    <a ng-click="showAdvance=!showAdvance">
      <p class="strong" translate="TRANS_advanced"> + Advanced: Add Data </p>
    </a>
    <section ng-show="showAdvance">
      <div class="form-group">
        <label translate="TRANS_data"> Data: </label>
        <input class="form-control" type="text" placeholder="0x6d79657468657277616c6c65742e636f6d20697320746865206265737421" ng-model="tx.data" ng-disabled="tx.readOnly" ng-class="Validator.isValidHex(tx.data) ? 'is-valid' : 'is-invalid'"/>
      </div>
    </section>
  </div>
  <!-- / Advanced Option Panel -->

  <div class="form-group">
    <a class="btn btn-info btn-block" ng-click="generateTx()" translate="SEND_generate"> Generate Transaction </a>
  </div>
  <div class="form-group" ng-show="showRaw">
    <label translate="SEND_raw"> Unsigned Transaction </label>
    <textarea class="form-control" rows="4" readonly >{{rawTx}}</textarea>
    <label translate="SEND_signed"> Signed Transaction </label>
    <textarea class="form-control" rows="4" readonly >{{signedTx}}</textarea>
  </div>

  <div class="form-group" ng-show="showRaw">
    <a class="btn btn-primary btn-block" data-toggle="modal" data-target="#sendTransaction" translate="SEND_trans"> Send Transaction </a>
  </div>

  <div class="form-group" ng-show="showRaw">
    <a style="background-color:cadetblue" class="btn btn-primary btn-block" ng-click="scaduleTx()" translate="SEND_status"> Send With Status.im BlockTime </a>
  </div>

   <div class="form-group" ng-show="showRaw && showb">
    <a style="background-color:cadetblue" class="btn btn-primary btn-block"> BlockNumber is {{currentBlockNumber}} </a>
  </div>

    <div class="form-group" ng-show="showb && showRaw">
    <a class="btn btn-danger btn-block" ng-click="stopScaduleTx()"> Cancel </a>
  </div>

</section>
<!-- / Content -->
