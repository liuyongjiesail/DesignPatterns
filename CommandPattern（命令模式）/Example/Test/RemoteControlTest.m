//
//  RemoteControlTest.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/10.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "RemoteControlTest.h"
#import "SimpleRemoteControl.h"
#import "RemoteControl.h"
#import "Light.h"
#import "LightOnCommand.h"
#import "LightOffCommand.h"
#import "GarageDoor.h"
#import "GarageDoorOpenCommand.h"
#import "GarageDoorDownCommand.h"
#import "CeilingFan.h"
#import "CeilingFanOnCommand.h"
#import "CeilingFanOffCommand.h"
#import "Stereo.h"
#import "StereoOnCommand.h"
#import "StereoOffCommand.h"

#import "MacroCommand.h"

@implementation RemoteControlTest

+ (void)simpleTest {

    SimpleRemoteControl *remote = SimpleRemoteControl.new;
    
    Light *light = Light.new;
    LightOnCommand *lightOn = LightOnCommand.new;
    lightOn.light = light;
    
    GarageDoor *garageDoor = GarageDoor.new;
    GarageDoorOpenCommand *garageOpen = GarageDoorOpenCommand.new;
    garageOpen.door = garageDoor;
    
    remote.slot = lightOn;
    [remote buttonWasPressed];
    remote.slot = garageOpen;
    [remote buttonWasPressed];
    
}

+ (void)mediumTest {
    
    RemoteControl *remoteControl = RemoteControl.new;
    
    Light *livingRoomLight = Light.new;
    livingRoomLight.place = @"Living Room";
    Light *kitchenLight = Light.new;
    kitchenLight.place = @"kitchen";
    GarageDoor *garageDoor = GarageDoor.new;
    CeilingFan *ceilingFan = CeilingFan.new;
    Stereo *stereo = Stereo.new;
    
    LightOnCommand *livingRoomLightOn = LightOnCommand.new;
    livingRoomLightOn.light = livingRoomLight;
    LightOffCommand *livingRoomLightOff = LightOffCommand.new;
    livingRoomLightOff.light = livingRoomLight;
    
    LightOnCommand *kitchenLightOn = LightOnCommand.new;
    kitchenLightOn.light = kitchenLight;
    LightOffCommand *kitchenLightOff = LightOffCommand.new;
    kitchenLightOff.light = kitchenLight;
    
    GarageDoorOpenCommand *garageDoorOpen = GarageDoorOpenCommand.new;
    garageDoorOpen.door = garageDoor;
    GarageDoorDownCommand *garageDoorDown = GarageDoorDownCommand.new;
    garageDoorDown.door = garageDoor;
    
    CeilingFanOnCommand *ceilingFanOn = CeilingFanOnCommand.new;
    ceilingFanOn.ceilingFan = ceilingFan;
    CeilingFanOffCommand *ceilingFanOff = CeilingFanOffCommand.new;
    ceilingFanOff.ceilingFan = ceilingFan;
    
    StereoOnCommand *stereoOn = StereoOnCommand.new;
    stereoOn.stereo = stereo;
    StereoOffCommand *stereoOff = StereoOffCommand.new;
    stereoOff.stereo = stereo;
    
    [remoteControl setCommandSlot:0 onCommand:livingRoomLightOn offCommand:livingRoomLightOff];
    [remoteControl setCommandSlot:1 onCommand:kitchenLightOn offCommand:kitchenLightOff];
    [remoteControl setCommandSlot:2 onCommand:garageDoorOpen offCommand:garageDoorDown];
    [remoteControl setCommandSlot:3 onCommand:ceilingFanOn offCommand:ceilingFanOff];
    [remoteControl setCommandSlot:4 onCommand:stereoOn offCommand:stereoOff];
    
    NSLog(@"\n%@", remoteControl);
    
    [remoteControl onButtonWasPushedSlot:0];
    [remoteControl offButtonWasPushedSlot:0];
    [remoteControl undoButtonWasPushed];
    [remoteControl onButtonWasPushedSlot:1];
    [remoteControl offButtonWasPushedSlot:1];
    [remoteControl onButtonWasPushedSlot:2];
    [remoteControl offButtonWasPushedSlot:2];
    [remoteControl onButtonWasPushedSlot:3];
    [remoteControl offButtonWasPushedSlot:3];
    [remoteControl onButtonWasPushedSlot:4];
    [remoteControl offButtonWasPushedSlot:4];
    
}

+ (void)macroTest {
    
    RemoteControl *remoteControl = RemoteControl.new;
    
    Light *kitchenLight = Light.new;
    kitchenLight.place = @"kitchen";
    GarageDoor *garageDoor = GarageDoor.new;
    CeilingFan *ceilingFan = CeilingFan.new;
    Stereo *stereo = Stereo.new;
    
    LightOnCommand *kitchenLightOn = LightOnCommand.new;
    kitchenLightOn.light = kitchenLight;
    LightOffCommand *kitchenLightOff = LightOffCommand.new;
    kitchenLightOff.light = kitchenLight;
    
    GarageDoorOpenCommand *garageDoorOpen = GarageDoorOpenCommand.new;
    garageDoorOpen.door = garageDoor;
    GarageDoorDownCommand *garageDoorDown = GarageDoorDownCommand.new;
    garageDoorDown.door = garageDoor;
    
    CeilingFanOnCommand *ceilingFanOn = CeilingFanOnCommand.new;
    ceilingFanOn.ceilingFan = ceilingFan;
    CeilingFanOffCommand *ceilingFanOff = CeilingFanOffCommand.new;
    ceilingFanOff.ceilingFan = ceilingFan;
    
    StereoOnCommand *stereoOn = StereoOnCommand.new;
    stereoOn.stereo = stereo;
    StereoOffCommand *stereoOff = StereoOffCommand.new;
    stereoOff.stereo = stereo;
    
    NSMutableArray *partyOnArray = @[kitchenLightOn, garageDoorOpen, ceilingFanOn, stereoOn].mutableCopy;
    NSMutableArray *partyOffArray = @[kitchenLightOff, garageDoorDown, ceilingFanOff, stereoOff].mutableCopy;
    
    MacroCommand *partyOnMacro = [MacroCommand new];
    partyOnMacro.commandArray = partyOnArray;
    
    MacroCommand *partyOffMacro = [MacroCommand new];
    partyOffMacro.commandArray = partyOffArray;
    
    [remoteControl setCommandSlot:0 onCommand:partyOnMacro offCommand:partyOffMacro];
    
    NSLog(@"\n------- 宏命令 -------\n");
    NSLog(@"\n%@", remoteControl);
    
    NSLog(@"\n------- 打开 -------\n");
    [remoteControl onButtonWasPushedSlot:0];
    
    NSLog(@"\n------- 关闭 -------\n");
    [remoteControl offButtonWasPushedSlot:0];

    NSLog(@"\n------- 撤销 -------\n");
    [remoteControl undoButtonWasPushed];
    
}

@end
