.class public abstract Landroid/service/controls/actions/ControlAction;
.super Ljava/lang/Object;
.source "ControlAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/actions/ControlAction$ResponseResult;,
        Landroid/service/controls/actions/ControlAction$ActionType;
    }
.end annotation


# static fields
.field public static final ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

.field private static final KEY_ACTION_TYPE:Ljava/lang/String; = "key_action_type"

.field private static final KEY_CHALLENGE_VALUE:Ljava/lang/String; = "key_challenge_value"

.field private static final KEY_TEMPLATE_ID:Ljava/lang/String; = "key_template_id"

.field private static final NUM_RESPONSE_TYPES:I = 0x6

.field public static final RESPONSE_CHALLENGE_ACK:I = 0x3

.field public static final RESPONSE_CHALLENGE_PASSPHRASE:I = 0x5

.field public static final RESPONSE_CHALLENGE_PIN:I = 0x4

.field public static final RESPONSE_FAIL:I = 0x2

.field public static final RESPONSE_OK:I = 0x1

.field public static final RESPONSE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ControlAction"

.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_COMMAND:I = 0x5

.field public static final TYPE_ERROR:I = -0x1

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_MODE:I = 0x4


# instance fields
.field private final mChallengeValue:Ljava/lang/String;

.field private final mTemplateId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/controls/actions/ControlAction$1;

    invoke-direct {v0}, Landroid/service/controls/actions/ControlAction$1;-><init>()V

    sput-object v0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key_template_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    const-string v0, "key_challenge_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/controls/actions/ControlAction$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/service/controls/actions/ControlAction;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    return-void
.end method

.method static createActionFromBundle(Landroid/os/Bundle;)Landroid/service/controls/actions/ControlAction;
    .registers 5

    const-string v0, "ControlAction"

    if-nez p0, :cond_c

    const-string v1, "Null bundle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-object v0

    :cond_c
    const/4 v1, -0x1

    const-string v2, "key_action_type"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_36

    const/4 v2, 0x2

    if-eq v1, v2, :cond_30

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x5

    if-eq v1, v2, :cond_24

    :try_start_1f
    sget-object v0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-object v0

    :catch_22
    move-exception v2

    goto :goto_3c

    :cond_24
    new-instance v2, Landroid/service/controls/actions/CommandAction;

    invoke-direct {v2, p0}, Landroid/service/controls/actions/CommandAction;-><init>(Landroid/os/Bundle;)V

    return-object v2

    :cond_2a
    new-instance v2, Landroid/service/controls/actions/ModeAction;

    invoke-direct {v2, p0}, Landroid/service/controls/actions/ModeAction;-><init>(Landroid/os/Bundle;)V

    return-object v2

    :cond_30
    new-instance v2, Landroid/service/controls/actions/FloatAction;

    invoke-direct {v2, p0}, Landroid/service/controls/actions/FloatAction;-><init>(Landroid/os/Bundle;)V

    return-object v2

    :cond_36
    new-instance v2, Landroid/service/controls/actions/BooleanAction;

    invoke-direct {v2, p0}, Landroid/service/controls/actions/BooleanAction;-><init>(Landroid/os/Bundle;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3b} :catch_22

    return-object v2

    :goto_3c
    const-string v3, "Error creating action"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-object v0
.end method

.method public static getErrorAction()Landroid/service/controls/actions/ControlAction;
    .registers 1

    sget-object v0, Landroid/service/controls/actions/ControlAction;->ERROR_ACTION:Landroid/service/controls/actions/ControlAction;

    return-object v0
.end method

.method public static final isValidResponse(I)Z
    .registers 2

    if-ltz p0, :cond_7

    const/4 v0, 0x6

    if-ge p0, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method


# virtual methods
.method public abstract getActionType()I
.end method

.method public getChallengeValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    return-object v0
.end method

.method getDataBundle()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/service/controls/actions/ControlAction;->getActionType()I

    move-result v1

    const-string v2, "key_action_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    const-string v2, "key_template_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/controls/actions/ControlAction;->mChallengeValue:Ljava/lang/String;

    const-string v2, "key_challenge_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/actions/ControlAction;->mTemplateId:Ljava/lang/String;

    return-object v0
.end method
