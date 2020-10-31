.class public final synthetic Landroid/content/pm/-$$Lambda$IPackageManager$Stub$Proxy$X2I1qlX4SiKMZSjDTNzS_nTibbo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/-$$Lambda$IPackageManager$Stub$Proxy$X2I1qlX4SiKMZSjDTNzS_nTibbo;->f$0:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/content/pm/-$$Lambda$IPackageManager$Stub$Proxy$X2I1qlX4SiKMZSjDTNzS_nTibbo;->f$0:Landroid/os/Parcel;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/content/pm/IPackageManager$Stub$Proxy;->lambda$notifyDexLoad$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
