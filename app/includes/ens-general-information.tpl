<article class="row" ng-hide="hideEnsInfoPanel">

  <br /><br />

  <section class="col-sm-8 col-xs-12 col-sm-offset-2 well" >

    <h5 class="text-center"> What is the process like? </h5>

      <h6 ng-click="ensPrep = !ensPrep">
        <span ng-show="!ensPrep">+</span><span ng-show="ensPrep">-</span>
        1. Preparation
      </h6>
      <ul ng-show="ensPrep">
        <li> Decide which account you wish to own the name & ensure you have multiple backups of that account.</li>
        <li> Decide the maximum amount of ETH you are willing to pay for the name (your <u>Bid Amount</u>). Ensure that account has enough to cover your bid + 0.01 ETH for gas.</li>
      </ul>

      <h6 ng-click="ensAuct = !ensAuct">
        <span ng-show="!ensAuct">+</span><span ng-show="ensAuct">-</span>
        2. Start an Auction / Place a Bid
      </h6>
      <ul ng-show="ensAuct">
        <li> Bidding period lasts 3 days (72 hours). </li>
        <li> You will enter the <u>name</u>, <u>Actual Bid Amount</u>, <u>Bid Mask</u>, which is protected by a <u>Secret Phrase</u>.</li>
        <li> This places your bid, but this information is kept secret until you reveal it.</li>
      </ul>

      <h6 ng-click="ensReveal = !ensReveal">
        <span ng-show="!ensReveal">+</span><span ng-show="ensReveal">-</span>
        3. Reveal your Bid
      </h6>
      <ul ng-show="ensReveal">
        <li class="strong">If you do not reveal your bid, you will not be refunded.</strong> </li>
        <li> Reveal Period lasts 2 days (48 hours). </li>
        <li> You will unlock your account, enter the <u>Bid Amount</u>, and the <u>Secret Phrase</u>.</li>
        <li>In the event that two parties bid exactly the same amount, the first bid revealed will win.</li>
      </ul>

      <h6 ng-click="ensFinalize = !ensFinalize">
        <span ng-show="!ensFinalize">+</span><span ng-show="ensFinalize">-</span>
        4. Finalize the Auction
      </h6>
      <ul ng-show="ensFinalize">
        <li> Once the auction has ended (after 5 days / 120 hours), the winner needs to finalize the auction in order to claim their new name.</li>
        <li> The winner will be refunded the difference between their bid and the next-highest bid. If you are the only bidder, you will refunded all but 0.01 ETH. </li>
      </ul>
      <h6 ng-click="ensMore = !ensMore">
        <span ng-show="!ensMore">+</span><span ng-show="ensMore">-</span>
        More Information
      </h6>
      <ul ng-show="ensMore">
         <li>The auction for this registrar is a blind auction, and is described in <a href="https://github.com/ethereum/EIPs/issues/162" target="_blank">EIP162</a>. Basically, no one can see *anything* during the auction.</li>
          <li><a href="http://docs.ens.domains/en/latest/userguide.html#registering-a-name-with-the-auction-registrar" target="_blank">ENS: Read the Docs</a></li>
          <li><a href="https://medium.com/the-ethereum-name-service/announcing-the-ethereum-name-service-relaunch-date-4390af6dd9a2" target="_blank">Announcing the Ethereum Name Service Relaunch Date!</a></li>
      </ul>
      <hr />
      <p class="text-danger"><strong>  Due to an overwhelming number of support requests regarding the ENS, we will NOT providing support to those who are attempting to start a name business (aka "domain squatting") via our free, open source service. </strong> If you are bidding on hundreds of names, brand names, or the entire human-readable dictionary, do not expect a response. If you are a typical user who wants few cool names, you're safe.</p>

  </section>

</article>
