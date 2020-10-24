.class final Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType$ConnTypeVerifier;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType$ConnTypeVerifier;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType$ConnTypeVerifier;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType$ConnTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;->forNumber(I)Lcom/xiaomi/mi_connect_service/IPCLParam$ConnParam$ConnType;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
