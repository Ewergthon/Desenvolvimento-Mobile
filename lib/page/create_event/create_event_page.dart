import 'dart:io';

import 'package:balloon_widget/balloon_widget.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toastification/toastification.dart';
import 'package:unithub/core/di/setup_injections.dart';
import 'package:unithub/core/extensions/navigator_extension.dart';
import 'package:unithub/core/extensions/screen_size_extension.dart';
import 'package:unithub/core/extensions/sizedbox_extension.dart';
import 'package:unithub/core/extensions/widget_position_extension.dart';
import 'package:unithub/core/routes/app_routes.dart';
import 'package:unithub/data/dto/event/event_dto.dart';
import 'package:unithub/page/components/app_text_field.dart';
import 'package:unithub/page/create_event/cubit/create_event_cubit.dart';
import 'package:unithub/page/create_event/cubit/create_event_state.dart';

class CreateEventPage extends StatefulWidget {
  const CreateEventPage({super.key});

  @override
  State<CreateEventPage> createState() => _CreateEventPageState();
}

class _CreateEventPageState extends State<CreateEventPage> {
  final cubit = i<CreateEventCubit>();

  final formKey = GlobalKey<FormState>();

  final TextEditingController _cpfC = TextEditingController();
  final TextEditingController _nameC = TextEditingController();
  final TextEditingController _registrationC = TextEditingController();
  final TextEditingController _eventNameC = TextEditingController();
  final TextEditingController _eventDateC = TextEditingController();
  final TextEditingController _startTimeC = TextEditingController();
  final TextEditingController _endTimeC = TextEditingController();
  final TextEditingController _endTimelC = TextEditingController();
  final TextEditingController _eventLocal = TextEditingController();
  final TextEditingController _descriptionC = TextEditingController();

  final categories = [
    "Direito",
    "Saúde",
    "Tecnologia",
  ];

  final public = [
    "Interno",
    "Externo",
  ];

  String? selectedCategory;
  String? selectedPublic = "Interno";

  bool showBalloon = true;

  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leadingWidth: 120,
          leading: Row(
            children: [
              IconButton(
                onPressed: () => context.pop(),
                icon:
                    const Icon(Icons.arrow_back_ios, color: Color(0xFF007AFF)),
              ),
              const Text("Eventos",
                  style: TextStyle(color: Color(0xFF007AFF), fontSize: 17)),
            ],
          ),
          title: const Text('Criar evento',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
        ),
        body: BlocConsumer<CreateEventCubit, CreateEventState>(
          bloc: cubit,
          listener: (context, state) {
            cubit.state.maybeWhen(
              orElse: () {},
              error: (exception, stackTrace, shouldPopPage) {
                toastification.show(
                  alignment: Alignment.bottomCenter,
                  context: context,
                  autoCloseDuration: const Duration(seconds: 3),
                  showProgressBar: false,
                  borderSide: const BorderSide(color: Colors.transparent),
                  type: ToastificationType.error,
                  backgroundColor: Colors.red,
                  applyBlurEffect: true,
                  style: ToastificationStyle.simple,
                  showIcon: false,
                  borderRadius: BorderRadius.circular(20),
                  closeButtonShowType: CloseButtonShowType.none,
                  title: Text(
                    exception.toString(), 
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ).centralized(),
                );
              },
              success: () {
                toastification.show(
                  alignment: Alignment.bottomCenter,
                  context: context,
                  autoCloseDuration: const Duration(seconds: 3),
                  showProgressBar: false,
                  type: ToastificationType.success,
                  applyBlurEffect: true,
                  style: ToastificationStyle.simple,
                  borderSide: const BorderSide(color: Colors.transparent),
                  backgroundColor: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                  closeButtonShowType: CloseButtonShowType.none,
                  title: const Text(
                    "Evento criado com sucesso!", 
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ).centralized(),
                );
                // TODO: POPUP DE CONFIRMAÇÃO
                context.pushReplacementNamed(AppRoutes.navBar);
              },
            );
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFAFAFA),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: SizedBox(
                      width: context.getWidth(),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text.rich(
                              TextSpan(
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(text: "CPF"),
                                  TextSpan(
                                      text: "*",
                                      style: TextStyle(color: Colors.red)),
                                ],
                              ),
                            ),
                            AppTextField(
                              controller: _cpfC,
                              hintText: "000.000.000-00",
                              validator: (v) {
                                if (v == null || v!.isEmpty) {
                                  return "Este campo precisa ser preenchido.";
                                }
                                return null;
                              },
                              inputType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                CpfInputFormatter(),
                              ],
                            ),
                            20.height(),
                            const Text.rich(
                              TextSpan(
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(text: "Nome do(a) Palestrante"),
                                  TextSpan(
                                      text: "*",
                                      style: TextStyle(color: Colors.red)),
                                ],
                              ),
                            ),
                            AppTextField(
                              controller: _nameC,
                              validator: (v) {
                                if (v == null || v!.isEmpty) {
                                  return "Este campo precisa ser preenchido.";
                                }
                                return null;
                              },
                              inputType: TextInputType.name,
                            ),
                            20.height(),
                            const Text.rich(
                              TextSpan(
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(
                                      text:
                                          "Matrícula (responsável ou terceiro)"),
                                  TextSpan(
                                      text: "*",
                                      style: TextStyle(color: Colors.red)),
                                ],
                              ),
                            ),
                            AppTextField(
                              controller: _registrationC,
                              validator: (v) {
                                if (v == null || v!.isEmpty) {
                                  return "Este campo precisa ser preenchido.";
                                }
                                return null;
                              },
                              inputType: TextInputType.number,
                            ),
                            20.height(),
                            const Text.rich(
                              TextSpan(
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(text: "Nome do Evento"),
                                  TextSpan(
                                      text: "*",
                                      style: TextStyle(color: Colors.red)),
                                ],
                              ),
                            ),
                            AppTextField(
                              controller: _eventNameC,
                              validator: (v) {
                                if (v == null || v!.isEmpty) {
                                  return "Este campo precisa ser preenchido.";
                                }
                                return null;
                              },
                              inputType: TextInputType.name,
                            ),
                            20.height(),
                            const Text.rich(
                              TextSpan(
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(text: "Data do Evento"),
                                  TextSpan(
                                      text: "*",
                                      style: TextStyle(color: Colors.red)),
                                ],
                              ),
                            ),
                            AppTextField(
                              controller: _eventDateC,
                              validator: (v) {
                                if (v == null || v!.isEmpty) {
                                  return "Este campo precisa ser preenchido.";
                                }
                                return null;
                              },
                              hintText: "dd/mm/aaaa",
                              inputType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                DataInputFormatter(),
                              ],
                              sufixIcon: const Icon(
                                Icons.date_range_outlined,
                                size: 32,
                                color: Color(0xFF0880AE),
                              ),
                            ),
                            20.height(),
                            const Text.rich(
                              TextSpan(
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(text: "Hora"),
                                  TextSpan(
                                      text: "*",
                                      style: TextStyle(color: Colors.red)),
                                ],
                              ),
                            ),
                            10.width(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("De",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      width: context.getWidth() * 0.3,
                                      child: AppTextField(
                                        validator: (v) {
                                          if (v == null || v!.isEmpty) {
                                            return "";
                                          }
                                          return null;
                                        },
                                        controller: _startTimeC,
                                        hintText: "mm:hh",
                                        inputType: TextInputType.number,
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                          HoraInputFormatter(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Até",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      width: context.getWidth() * 0.3,
                                      child: AppTextField(
                                        validator: (v) {
                                          if (v == null || v!.isEmpty) {
                                            return "";
                                          }
                                          return null;
                                        },
                                        controller: _endTimelC,
                                        hintText: "mm:hh",
                                        inputType: TextInputType.number,
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                          HoraInputFormatter(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            20.height(),
                            const Text.rich(
                              TextSpan(
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(text: "Categoria"),
                                  TextSpan(
                                      text: "*",
                                      style: TextStyle(color: Colors.red)),
                                ],
                              ),
                            ),
                            DropdownButtonFormField(
                              validator: (v) {
                                if (v == null) {
                                  return "Este campo precisa ser preenchido.";
                                }
                                return null;
                              },
                              icon: const Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  size: 30,
                                  color: Color(0xFF0880AE)),
                              decoration: InputDecoration(
                                hintText: "Selecione uma categoria",
                                contentPadding: const EdgeInsets.all(8),
                                filled: true,
                                fillColor: Colors.white,
                                hintStyle:
                                    const TextStyle(color: Colors.black26),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.black26)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.black26)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.black26)),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.black26)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.redAccent)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.redAccent)),
                              ),
                              value: selectedCategory,
                              items: categories.map((c) {
                                return DropdownMenuItem<String>(
                                  value: c,
                                  child: Text(c),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  selectedCategory = newValue;
                                });
                              },
                            ),
                            20.height(),
                            const Text.rich(
                              TextSpan(
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(text: "Local a ser alocado"),
                                  TextSpan(
                                      text: "*",
                                      style: TextStyle(color: Colors.red)),
                                ],
                              ),
                            ),
                            AppTextField(
                              controller: _eventLocal,
                              validator: (v) {
                                if (v == null || v!.isEmpty) {
                                  return "Este campo precisa ser preenchido.";
                                }
                                return null;
                              },
                              sufixIcon: const Icon(Icons.location_on_outlined,
                                  size: 32, color: Color(0xFF0880AE)),
                            ),
                            Visibility(
                              visible: showBalloon,
                              child: Balloon(
                                color: const Color(0xFFFFD2D2),
                                nipPosition: BalloonNipPosition.topRight,
                                child: SizedBox(
                                  width: context.getWidth(),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        const Expanded(
                                          flex: 5,
                                          child: Column(
                                            children: [
                                              Text(
                                                "Verificar disponibilade nesse horário",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                "Para criar um evento incrível precisamos primeiro verificar a sua disponibilidade.",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                showBalloon = !showBalloon;
                                              });
                                            },
                                            icon: const Icon(Icons.close),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            20.height(),
                            const Text(
                              "Descrição do Evento",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            AppTextField(
                              controller: _descriptionC,
                              hintText: "Descreva como será o evento",
                              maxLines: 5,
                              inputType: TextInputType.multiline,
                            ),
                            20.height(),
                            const Text.rich(
                              TextSpan(
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(text: "Público"),
                                  TextSpan(
                                      text: "*",
                                      style: TextStyle(color: Colors.red)),
                                ],
                              ),
                            ),
                            RadioListTile<String>(
                              contentPadding: EdgeInsets.zero,
                              activeColor: const Color(0xFF007AFF),
                              title: Text(public[0],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              value: public[0],
                              groupValue: selectedPublic,
                              onChanged: (value) {
                                setState(() {
                                  selectedPublic = value;
                                });
                              },
                            ),
                            RadioListTile<String>(
                              contentPadding: EdgeInsets.zero,
                              activeColor: const Color(0xFF007AFF),
                              title: Text(public[1],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              value: public[1],
                              groupValue: selectedPublic,
                              onChanged: (value) {
                                setState(() {
                                  selectedPublic = value;
                                });
                              },
                            ),
                            20.height(),
                            const Text(
                              "Mídia",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            _selectedImage != null
                                ? Stack(
                                    children: [
                                      Image.file(
                                        _selectedImage!,
                                        height: context.getHeight() * 0.25,
                                        width: context.getHalfWidth(),
                                        fit: BoxFit.cover,
                                      ),
                                      Positioned(
                                        top: 8.0,
                                        right: 8.0,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _selectedImage = null;
                                            });
                                          },
                                          child: Container(
                                            color: Colors.black54,
                                            child: const Icon(
                                              Icons.close,
                                              color: Colors.white,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : InkWell(
                                    onTap: () =>
                                        _pickImage(ImageSource.gallery),
                                    child: const Card(
                                      color: Colors.white,
                                      elevation: 6,
                                      shadowColor: Color(0xFF007AFF),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20, horizontal: 60),
                                        child: Column(
                                          children: [
                                            Icon(Icons.camera_alt_outlined,
                                                size: 40,
                                                color: Color(0xFF007AFF)),
                                            Text("Foto",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xFF007AFF))),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                            20.height(),
                            ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(12),
                                      elevation: 4,
                                      backgroundColor: const Color(0xFFFDBC14),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(11)),
                                    ),
                                    onPressed: () async {
                                      if (formKey.currentState?.validate() ??
                                          false) {
                                            EventDto dto = EventDto(
                                              cpf: _cpfC.text,
                                              name: _nameC.text,
                                              registration: _registrationC.text,
                                              eventName: _eventNameC.text,
                                              eventDate: _eventDateC.text,
                                              eventStartTime: _startTimeC.text,
                                              eventEndTime: _endTimeC.text,
                                              category: selectedCategory ?? "",
                                              localEvent: _eventLocal.text,
                                              description: _descriptionC.text,
                                              public: selectedPublic ?? "Interno",
                                            );

                                            cubit.createEvent(dto, _selectedImage);
                                          }
                                    },
                                    child: state is LoadingCreateEventState
                                    ? const CircularProgressIndicator(color: Colors.white)
                                    : const Text(
                                      "Confirmar",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ).centralized())
                                .centralized(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _cpfC.dispose();
    _nameC.dispose();
    _registrationC.dispose();
    _eventNameC.dispose();
    _eventDateC.dispose();
    _startTimeC.dispose();
    _endTimeC.dispose();
    _endTimelC.dispose();
    _eventLocal.dispose();
    _descriptionC.dispose();
    super.dispose();
  }
}
