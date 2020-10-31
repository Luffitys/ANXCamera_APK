.class public interface abstract Lmiui/hardware/display/IDisplayFeatureCallback;
.super Ljava/lang/Object;
.source "IDisplayFeatureCallback.java"

# interfaces
.implements Landroid/internal/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/display/IDisplayFeatureCallback$Stub;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeatureCallback"


# virtual methods
.method public varargs abstract displayfeatureInfoChanged(I[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
