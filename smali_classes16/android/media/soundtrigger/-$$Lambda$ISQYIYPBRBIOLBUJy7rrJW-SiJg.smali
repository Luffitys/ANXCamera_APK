.class public final synthetic Landroid/media/soundtrigger/-$$Lambda$ISQYIYPBRBIOLBUJy7rrJW-SiJg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/soundtrigger/-$$Lambda$ISQYIYPBRBIOLBUJy7rrJW-SiJg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/soundtrigger/-$$Lambda$ISQYIYPBRBIOLBUJy7rrJW-SiJg;

    invoke-direct {v0}, Landroid/media/soundtrigger/-$$Lambda$ISQYIYPBRBIOLBUJy7rrJW-SiJg;-><init>()V

    sput-object v0, Landroid/media/soundtrigger/-$$Lambda$ISQYIYPBRBIOLBUJy7rrJW-SiJg;->INSTANCE:Landroid/media/soundtrigger/-$$Lambda$ISQYIYPBRBIOLBUJy7rrJW-SiJg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Landroid/media/soundtrigger/SoundTriggerDetectionService;

    check-cast p2, Ljava/util/UUID;

    check-cast p3, Landroid/os/Bundle;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->onGenericRecognitionEvent(Ljava/util/UUID;Landroid/os/Bundle;ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V

    return-void
.end method
