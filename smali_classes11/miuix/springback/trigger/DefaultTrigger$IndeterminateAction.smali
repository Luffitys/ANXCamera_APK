.class public abstract Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;
.super Lmiuix/springback/trigger/DefaultTrigger$Action;
.source ""


# static fields
.field public static final DEFAULT_OFFSET_POINT:I

.field static final DEFAULT_TRIGGER_TEXTIDS:[I


# instance fields
.field private mCompleteListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;

.field private mTriggerTextIDs:[I

.field private mTriggerTexts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_pull_to_refresh:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_release_to_refresh:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_refreshing:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_refreshed:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-static {}, Lmiuix/springback/trigger/DefaultTrigger;->access$3900()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/DefaultTrigger$Action;-><init>(II)V

    sget-object v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    if-ltz p1, :cond_0

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->mTriggerTextIDs:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid offsetPoint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(I[I)V
    .locals 2

    invoke-static {}, Lmiuix/springback/trigger/DefaultTrigger;->access$3900()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/DefaultTrigger$Action;-><init>(II)V

    sget-object v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    array-length p1, p2

    array-length v0, v0

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->mTriggerTextIDs:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid text Ids"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid offsetPoint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$302(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;)Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;

    return-object p1
.end method

.method static synthetic access$400(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)[I
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->mTriggerTextIDs:[I

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public notifyLoadComplete()V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;->onActionComplete(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)V

    :cond_0
    return-void
.end method

.method public notifyTriggerTextIndex(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;->onUpdateTriggerTextIndex(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startIndeterminateAction()V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction$OnActionCompleteListener;->onActionStart(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateAction;)V

    :cond_0
    return-void
.end method
