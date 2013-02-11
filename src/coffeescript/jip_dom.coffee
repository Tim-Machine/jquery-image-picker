class JipDom
	constructor: (@target, @fillerImg, @resize, @height, @width)->
		@replaceInput()

	replaceInput:=>
		replacement = """
				      <div class="jipSelector">
				          <div class="jipPlaceHolder">
				            #{@fillerImg}
				            <div class="jipImageName">{image_name}</div>
				          </div>
				          <div><button class="jipSelectBtn">select Image</button></div>
				      </div>
						"""
		selector = "jipPlaceHolder"
		document.getElementById(@target).className += "hidden"
		refNode = document.getElementById(@target)
		refNode.parentNode.insertBefore(replacement,refNode.nextSibling);

		if @resize
			elem = document.getElementById(selector);
			elem.setAttribute('height', @height)
			elem.setAttribute('width', @width)

		return ture;

	addModal:=>
		modal = """
			<div id="jipOverlay">&nbsp;</div>
			    <div id="jipModal">
			      <!-- start header -->
			      <div id="jipTitle">
			        <h3>{{title}}</h3>
			        <form>
			          <label for="jipFolderSelect">Change Folder</label>
			          <select id="jipFolderSelect">
			            <option value='/url/main'>Main</option>
			            <option value='/url/avatar'>Avatar</option>
			          </select>
			        </form>
			        <div class="clearfix">&nbsp;</div>
			      </div>
			      <!-- end Header -->

			      <!-- start modal body -->
			      <div id="jipBody">
			        <ul>

			        </ul>
			      </div>
			      <!-- end modal body -->
			      <!-- start footer -->
			      <div id="jipFooter">
			        <div class="clearfix">&nbsp;</div>
			        <div id="jipPaging">
			          <ul>
			            <li> <button id="jipPrev"> Previous</button> </li>
			            <li> <button id="jipNext"> Next</button> </li>
			          </ul>
			        </div>
			        <div id="jipAction">
			          <ul>
			            <li> <button id="jipCancle"> Cancel</button> </li>
			            <li> <button id="jipSave"> Save</button> </li>
			          </ul>
			        </div>
			        <div class="clearfix">&nbsp;</div>
			      </div>
			      <!-- end jip footer -->
			      </div>
		"""
		modal = "jipModal"