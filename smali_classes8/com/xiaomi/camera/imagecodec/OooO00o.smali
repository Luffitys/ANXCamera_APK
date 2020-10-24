.class public final synthetic Lcom/xiaomi/camera/imagecodec/OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic OooO00o:Lcom/xiaomi/camera/imagecodec/OooO00o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/camera/imagecodec/OooO00o;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/OooO00o;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/OooO00o;->OooO00o:Lcom/xiaomi/camera/imagecodec/OooO00o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->OooO00o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
