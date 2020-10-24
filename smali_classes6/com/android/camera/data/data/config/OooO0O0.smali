.class public final synthetic Lcom/android/camera/data/data/config/OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/config/OooO0O0;->OooO00o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/config/OooO0O0;->OooO00o:Ljava/lang/String;

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->OooO0O0(Ljava/lang/String;Lcom/android/camera/data/data/ComponentDataItem;)Z

    move-result p0

    return p0
.end method
