.class public Lcom/miui/internal/vip/VipResponse;
.super Ljava/lang/Object;
.source "VipResponse.java"


# static fields
.field public static final FailRes:Lcom/miui/internal/vip/VipResponse;

.field public static final INIT_STATE:I = -0x1

.field public static final SuccWithoutValueRes:Lcom/miui/internal/vip/VipResponse;

.field public static final WaitRes:Lcom/miui/internal/vip/VipResponse;


# instance fields
.field public errMsg:Ljava/lang/String;

.field public state:I

.field public value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/miui/internal/vip/VipResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/internal/vip/VipResponse;-><init>(I)V

    sput-object v0, Lcom/miui/internal/vip/VipResponse;->SuccWithoutValueRes:Lcom/miui/internal/vip/VipResponse;

    new-instance v0, Lcom/miui/internal/vip/VipResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/internal/vip/VipResponse;-><init>(I)V

    sput-object v0, Lcom/miui/internal/vip/VipResponse;->WaitRes:Lcom/miui/internal/vip/VipResponse;

    new-instance v0, Lcom/miui/internal/vip/VipResponse;

    const v1, 0x15f90

    invoke-direct {v0, v1}, Lcom/miui/internal/vip/VipResponse;-><init>(I)V

    sput-object v0, Lcom/miui/internal/vip/VipResponse;->FailRes:Lcom/miui/internal/vip/VipResponse;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/internal/vip/VipResponse;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/internal/vip/VipResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 4

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/internal/vip/VipResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/vip/VipResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/internal/vip/VipResponse;->state:I

    iput-object p2, p0, Lcom/miui/internal/vip/VipResponse;->errMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/internal/vip/VipResponse;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clone()Lcom/miui/internal/vip/VipResponse;
    .registers 5

    new-instance v0, Lcom/miui/internal/vip/VipResponse;

    iget v1, p0, Lcom/miui/internal/vip/VipResponse;->state:I

    iget-object v2, p0, Lcom/miui/internal/vip/VipResponse;->errMsg:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/internal/vip/VipResponse;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/internal/vip/VipResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/internal/vip/VipResponse;->clone()Lcom/miui/internal/vip/VipResponse;

    move-result-object v0

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    iget v0, p0, Lcom/miui/internal/vip/VipResponse;->state:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isValid()Z
    .registers 3

    iget v0, p0, Lcom/miui/internal/vip/VipResponse;->state:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isWaiting()Z
    .registers 3

    iget v0, p0, Lcom/miui/internal/vip/VipResponse;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/miui/internal/vip/VipResponse;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/internal/vip/VipResponse;->errMsg:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/internal/vip/VipResponse;->value:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "{state = %d, errMsg = %s, value = %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
