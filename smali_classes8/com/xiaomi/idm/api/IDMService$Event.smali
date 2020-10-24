.class public abstract Lcom/xiaomi/idm/api/IDMService$Event;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mEid:I

.field private mService:Lcom/xiaomi/idm/api/IDMService;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/idm/api/IDMService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMService$Event;->mService:Lcom/xiaomi/idm/api/IDMService;

    iput p2, p0, Lcom/xiaomi/idm/api/IDMService$Event;->mEid:I

    return-void
.end method


# virtual methods
.method public getEid()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/api/IDMService$Event;->mEid:I

    return p0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMService$Event;->mService:Lcom/xiaomi/idm/api/IDMService;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/IDMService;->getUUID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract onEvent([B)V
.end method
