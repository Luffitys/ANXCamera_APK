.class public abstract Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;
.super Lmiuix/springback/trigger/DefaultTrigger$Action;
.source ""


# static fields
.field public static final DEFAULT_OFFSET_POINT:I

.field static final DEFAULT_TRIGGER_TEXTIDS:[I


# instance fields
.field private mCountNoData:I

.field private mTriggerTextIDs:[I

.field private mTriggerTexts:[Ljava/lang/String;

.field private mUpDataListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_up_refresh:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_up_refresh_fail:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_up_nodata:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_up_none:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-static {}, Lmiuix/springback/trigger/DefaultTrigger;->access$4000()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/DefaultTrigger$Action;-><init>(II)V

    sget-object v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mCountNoData:I

    if-ltz p1, :cond_0

    iput-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mTriggerTextIDs:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid offsetPoint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(I[I)V
    .locals 2

    invoke-static {}, Lmiuix/springback/trigger/DefaultTrigger;->access$4000()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/DefaultTrigger$Action;-><init>(II)V

    sget-object v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mCountNoData:I

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    array-length p1, p2

    array-length v0, v0

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mTriggerTextIDs:[I

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

.method static synthetic access$002(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;)Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;

    return-object p1
.end method

.method static synthetic access$100(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[I
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mTriggerTextIDs:[I

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getCountNoData()I
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mCountNoData:I

    return p0
.end method

.method public isNoData()Z
    .locals 0

    iget p0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mCountNoData:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyActionNoData()V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mCountNoData:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mCountNoData:I

    invoke-interface {v0, p0, v1}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;->onActionNoData(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;I)V

    :cond_0
    return-void
.end method

.method public notifyLoadComplete()V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mCountNoData:I

    invoke-interface {v0, p0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;->onActionComplete(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)V

    :cond_0
    return-void
.end method

.method public notifyLoadFail()V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;->onActionLoadFail(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)V

    :cond_0
    return-void
.end method

.method public notifyTriggerTextIndex(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;->onUpdateTriggerTextIndex(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startIndeterminateUpAction()V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;->mCountNoData:I

    invoke-interface {v0, p0}, Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction$OnUpActionDataListener;->onActionStart(Lmiuix/springback/trigger/DefaultTrigger$IndeterminateUpAction;)V

    :cond_0
    return-void
.end method
