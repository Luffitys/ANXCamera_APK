.class final Lcom/miui/whetstone/WhetstoneSysInfoManager$Holder;
.super Ljava/lang/Object;
.source "WhetstoneSysInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstoneSysInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/miui/whetstone/WhetstoneSysInfoManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/miui/whetstone/WhetstoneSysInfoManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstoneSysInfoManager;-><init>(Lcom/miui/whetstone/WhetstoneSysInfoManager$1;)V

    sput-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager$Holder;->INSTANCE:Lcom/miui/whetstone/WhetstoneSysInfoManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/miui/whetstone/WhetstoneSysInfoManager;
    .registers 1

    sget-object v0, Lcom/miui/whetstone/WhetstoneSysInfoManager$Holder;->INSTANCE:Lcom/miui/whetstone/WhetstoneSysInfoManager;

    return-object v0
.end method
