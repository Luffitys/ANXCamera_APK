.class public final synthetic Lcom/android/camera/dualvideo/render/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:Lcom/android/camera/dualvideo/render/OooO0OO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/render/OooO0OO;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/render/OooO0OO;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/render/OooO0OO;->OooO00o:Lcom/android/camera/dualvideo/render/OooO0OO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object p0

    return-object p0
.end method
