.class public final synthetic Landroid/service/voice/-$$Lambda$SpnCJ0NiI1Uo14qQ5iHFyV2F2mY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/service/voice/-$$Lambda$SpnCJ0NiI1Uo14qQ5iHFyV2F2mY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/voice/-$$Lambda$SpnCJ0NiI1Uo14qQ5iHFyV2F2mY;

    invoke-direct {v0}, Landroid/service/voice/-$$Lambda$SpnCJ0NiI1Uo14qQ5iHFyV2F2mY;-><init>()V

    sput-object v0, Landroid/service/voice/-$$Lambda$SpnCJ0NiI1Uo14qQ5iHFyV2F2mY;->INSTANCE:Landroid/service/voice/-$$Lambda$SpnCJ0NiI1Uo14qQ5iHFyV2F2mY;

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

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionService;->onReady()V

    return-void
.end method
