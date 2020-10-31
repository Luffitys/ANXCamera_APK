.class public final synthetic Landroid/service/voice/-$$Lambda$2vcT7tC5Khx2oNbQI6Zvwrft_YM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/voice/-$$Lambda$2vcT7tC5Khx2oNbQI6Zvwrft_YM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/voice/-$$Lambda$2vcT7tC5Khx2oNbQI6Zvwrft_YM;

    invoke-direct {v0}, Landroid/service/voice/-$$Lambda$2vcT7tC5Khx2oNbQI6Zvwrft_YM;-><init>()V

    sput-object v0, Landroid/service/voice/-$$Lambda$2vcT7tC5Khx2oNbQI6Zvwrft_YM;->INSTANCE:Landroid/service/voice/-$$Lambda$2vcT7tC5Khx2oNbQI6Zvwrft_YM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/service/voice/VoiceInteractionService;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionService;->onLaunchVoiceAssistFromKeyguard()V

    return-void
.end method
