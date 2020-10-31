.class public Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;
.super Ljava/lang/Object;
.source "UiEventLoggerFake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/logging/testing/UiEventLoggerFake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FakeUiEvent"
.end annotation


# instance fields
.field public final eventId:I

.field public final instanceId:Lcom/android/internal/logging/InstanceId;

.field public final packageName:Ljava/lang/String;

.field public final position:I

.field public final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->eventId:I

    iput p2, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->uid:I

    iput-object p3, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->instanceId:Lcom/android/internal/logging/InstanceId;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->position:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->eventId:I

    iput p2, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->uid:I

    iput-object p3, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->instanceId:Lcom/android/internal/logging/InstanceId;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->position:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->eventId:I

    iput p2, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->uid:I

    iput-object p3, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->instanceId:Lcom/android/internal/logging/InstanceId;

    iput p5, p0, Lcom/android/internal/logging/testing/UiEventLoggerFake$FakeUiEvent;->position:I

    return-void
.end method
