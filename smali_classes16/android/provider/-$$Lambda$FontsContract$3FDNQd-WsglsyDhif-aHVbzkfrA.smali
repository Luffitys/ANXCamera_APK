.class public final synthetic Landroid/provider/-$$Lambda$FontsContract$3FDNQd-WsglsyDhif-aHVbzkfrA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Landroid/provider/-$$Lambda$FontsContract$3FDNQd-WsglsyDhif-aHVbzkfrA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/provider/-$$Lambda$FontsContract$3FDNQd-WsglsyDhif-aHVbzkfrA;

    invoke-direct {v0}, Landroid/provider/-$$Lambda$FontsContract$3FDNQd-WsglsyDhif-aHVbzkfrA;-><init>()V

    sput-object v0, Landroid/provider/-$$Lambda$FontsContract$3FDNQd-WsglsyDhif-aHVbzkfrA;->INSTANCE:Landroid/provider/-$$Lambda$FontsContract$3FDNQd-WsglsyDhif-aHVbzkfrA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Landroid/provider/FontsContract;->lambda$static$13([B[B)I

    move-result p1

    return p1
.end method
