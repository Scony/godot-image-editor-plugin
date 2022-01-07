tool
extends Control

export(ImageTexture) var image_texture = null

var is_standalone = true

func _ready():
	if Engine.editor_hint and is_standalone:
		return
	find_node("TextureRect").texture = image_texture

#var editor_interface = null
#var editor_selection = null
#
#
#func _ready():
##	if editor_interface == null:
##		return
#	if Engine.editor_hint and editor_interface == null:
#		return
#	print('RDY')
#	print(editor_interface)
#	#editor_interface.get_resource_previewer().connect('preview_invalidated', self, 'xxx')
#	if editor_interface != null:
##		editor_interface.connect('scene_changed', self, '_on_scene_changed')
#		editor_interface.get_inspector().connect('object_id_selected', self, '_on_object_id_selected')
#		editor_interface.get_inspector().connect('property_edited', self, '_on_property_edited')
#		editor_interface.get_inspector().connect('property_selected', self, '_on_property_selected')
#		editor_interface.get_inspector().connect('resource_selected', self, '_on_resource_selected')
#		editor_selection = editor_interface.get_selection()
#		editor_selection.connect('selection_changed', self, '_on_selection_changed')
#		editor_interface.get_resource_previewer().connect('preview_invalidated', self, '_on_preview_invalidated')
#	elif test_texture != null:
#		find_node("TextureRect").texture = test_texture
#	#print(EditorPlugin.get_editor_interface())
#
#
##func _on_scene_changed(node):
##	print('_on_scene_changed ', node)
#
#
#func _on_preview_invalidated(path):
#	print('_on_preview_invalidated ', path)
#
#
#func _on_selection_changed():
#	print('_on_selection_changed ', editor_selection.get_selected_nodes(), editor_interface.get_edited_scene_root())
#
#func _on_object_id_selected(id):
#	print('_on_object_id_selected ', id)
#
#
#func _on_property_edited(property):
#	print('_on_property_edited ', property)
#
#
#func _on_property_selected(property):
#	print('_on_property_selected ', property)
#
#
#func _on_resource_selected(res, prop):
#	print('_on_resource_selected ', res, " :: ", prop)
#	if res is Texture:
#		find_node("TextureRect").texture = res
#
#
#func _on_Button_pressed():
#	_force_color(Color.red)
#
#
#func _on_Button2_pressed():
#	_force_color(Color.blue)
#
#func _force_color(color):
#	var texture = find_node("TextureRect").texture
#	if texture != null:
#		var image = texture.get_data()
#		image.lock()
#		var cnt = 0
#		for x in range(image.get_size().x):
#			for y in range(image.get_size().y):
#				if image.get_pixel(x, y).a > 0.0:
#					image.set_pixel(x, y, color)
#					if cnt == 0:
#						print(image.get_pixel(x, y))
#					cnt += 1
#		image.unlock()
#		print('done, cnt=', cnt)
#		#image.emit_changed()
#		texture.set_data(image)
##		texture.emit_changed()
##		var flags = texture.flags
##		texture.flags = Texture.FLAGS_DEFAULT
##		texture.emit_changed()
#		#texture.flags = flags
#		#texture.emit_changed()
#		#editor_interface.save_scene()
		
