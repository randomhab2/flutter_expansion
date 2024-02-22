import 'package:flutter/material.dart';
import 'package:flutter_expansion/src/trigger_model.dart';

final List<TriggerModel> triggerItems = [
  TriggerModel(
    id: UniqueKey(),
    title: 'Parent 1',
    timeline: false,
    children: [
      TriggerModel(
        id: UniqueKey(),
        title: 'Parent 1 Child 1',
        timeline: true,
        children: [
          TriggerModel(
            id: UniqueKey(),
            title: 'Parent 1 Child 1 Subchild 1',
            timeline: true,
            children: [
              TriggerModel(
                id: UniqueKey(),
                title: 'Parent 1 Child 1 Subchild 1 Sub-subchild 1',
                timeline: true,
                children: [
                  TriggerModel(
                    id: UniqueKey(),
                    title: 'Parent 1 Child 1 Subchild 1 Sub-subchild 1_1 ',
                    timeline: true,
                    children: [],
                  ),
                  TriggerModel(
                    id: UniqueKey(),
                    title: 'Parent 1 Child 1 Subchild 1 Sub-subchild 1_2 ',
                    timeline: true,
                    children: [],
                  ),
                ],
              ),
              TriggerModel(
                id: UniqueKey(),
                title: 'Parent 1 Child 1 Subchild 1 Sub-subchild 2',
                timeline: true,
                children: [],
              ),
            ],
          ),
          TriggerModel(
            id: UniqueKey(),
            title: 'Parent 1 Child 1 Subchild 2',
            timeline: true,
            children: [],
          ),
          TriggerModel(
            id: UniqueKey(),
            title: 'Parent 1 Child 1 Subchild 3',
            timeline: true,
            children: [],
          ),
        ],
      ),
      TriggerModel(
        id: UniqueKey(),
        title: 'Parent 1 Child 2',
        timeline: true,
        children: [
          TriggerModel(
            id: UniqueKey(),
            title: 'Parent 1 Child 2 Subchild 1',
            timeline: true,
            children: [],
          ),
          TriggerModel(
            id: UniqueKey(),
            title: 'Parent 1 Child 2 Subchild 2',
            timeline: true,
            children: [],
          )
        ],
      ),
      TriggerModel(
        id: UniqueKey(),
        title: 'Parent 1 Child 3',
        timeline: true,
        children: [],
      ),
      TriggerModel(
        id: UniqueKey(),
        title: 'Parent 1 Child 4',
        timeline: true,
        children: [],
      ),
    ],
  ),
  TriggerModel(
    id: UniqueKey(),
    title: 'Parent 2',
    timeline: false,
    children: [
      TriggerModel(
        id: UniqueKey(),
        title: 'Parent 1 Child 1',
        timeline: true,
        children: [],
      ),
      TriggerModel(
        id: UniqueKey(),
        title: 'Parent 1 Child 2',
        timeline: true,
        children: [],
      ),
    ],
  ),
  TriggerModel(
    id: UniqueKey(),
    title: 'Parent 3',
    timeline: false,
    icon: Icons.alarm,
    children: [],
  ),
];
