# planetarium.gd
# This file is part of I, Voyager
# https://ivoyager.dev
# Copyright (c) 2017-2019 Charlie Whitfield
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# *****************************************************************************

extends Reference

const EXTENSION_NAME := "Planetarium"
const EXTENSION_VERSION := "0.0.1"
const EXTENSION_VERSION_YMD := 20191109


func extension_init():
	ProjectBuilder.connect("project_objects_instantiated", self, "_on_project_objects_instantiated")
	Global.connect("gui_entered_tree", self, "_on_gui_entered_tree")
	Global.enable_save_load = false
	Global.allow_time_reversal = true

func _on_project_objects_instantiated() -> void:
	pass

func _on_gui_entered_tree(_gui_panel: Control) -> void:
	pass