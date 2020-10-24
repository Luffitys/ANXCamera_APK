.class public Lcom/xiaomi/idm/task/CallManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mCalls:Ljava/util/HashMap;

.field private mIDMApi:Lcom/xiaomi/idm/api/IDMApi;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/api/IDMApi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/task/CallManager;->mIDMApi:Lcom/xiaomi/idm/api/IDMApi;

    return-void
.end method
