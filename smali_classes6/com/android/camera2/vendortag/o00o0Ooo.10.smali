.class public final synthetic Lcom/android/camera2/vendortag/o00o0Ooo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic OooO00o:Lcom/android/camera2/vendortag/o00o0Ooo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera2/vendortag/o00o0Ooo;

    invoke-direct {v0}, Lcom/android/camera2/vendortag/o00o0Ooo;-><init>()V

    sput-object v0, Lcom/android/camera2/vendortag/o00o0Ooo;->OooO00o:Lcom/android/camera2/vendortag/o00o0Ooo;

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

    invoke-static {}, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->OoooO0O()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
