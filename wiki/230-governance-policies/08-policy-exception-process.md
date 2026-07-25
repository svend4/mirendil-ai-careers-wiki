# Policy exception process

## Назначение

Исключения нужны, когда стандартная политика временно мешает критичному исследованию, incident response или launch. Исключение не должно превращаться в скрытое постоянное правило.

## Когда допустимо исключение

- Существует срочная исследовательская или operational причина.
- Риск понятен и принят владельцем.
- Есть compensating control.
- У исключения есть срок действия.
- Есть план закрытия или превращения в нормальную policy change.

## Формат exception request

- policy section;
- requested deviation;
- reason;
- affected systems, data, tools или users;
- duration;
- compensating controls;
- approver;
- review date;
- closure criteria.

## Ограничения

- Исключение не может отменять audit trail.
- Исключение не может разрешать prohibited data без legal/security review.
- Исключение не может быть бессрочным.
- Повторяющееся исключение требует пересмотра самой политики.

## Lifecycle

1. Request создается владельцем работы.
2. Risk owner и governance owner принимают решение.
3. Exception записывается как decision record.
4. Monitoring owner проверяет compensating controls.
5. На review date исключение закрывается, продлевается или превращается в policy update.

## Evidence

- [Decision record schema](../200-protocols-contracts/06-decision-record-schema.md)
- [Risk register](../130-risk-register/README.md)
- [Release checklist](../220-maintenance-tooling/06-release-checklist.md)
