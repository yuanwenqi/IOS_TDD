//
// Created by Wenqi Yuan  on 19/07/2018.
// Copyright (c) 2018 Wenqi Yuan . All rights reserved.
//

import Foundation
import Typhoon
public class UIFactory:TyphoonAssembly{

    func createTestView() -> TyphoonDefinition{
        return  TyphoonDefinition(with: TestView.self){

        }
    }
}