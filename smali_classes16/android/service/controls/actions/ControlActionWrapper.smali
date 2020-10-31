.class public final Landroid/service/controls/actions/ControlActionWrapper;
.super Ljava/lang/Object;
.source "ControlActionWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/controls/actions/ControlActionWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mControlAction:Landroid/service/controls/actions/ControlAction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/controls/actions/ControlActionWrapper$1;

    invoke-direct {v0}, Landroid/service/controls/actions/ControlActionWrapper$1;-><init>()V

    sput-object v0, Landroid/service/controls/actions/ControlActionWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/service/controls/actions/ControlAction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/actions/ControlActionWrapper;->mControlAction:Landroid/service/controls/actions/ControlAction;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getWrappedAction()Landroid/service/controls/actions/ControlAction;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/actions/ControlActionWrapper;->mControlAction:Landroid/service/controls/actions/ControlAction;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/controls/actions/ControlActionWrapper;->mControlAction:Landroid/service/controls/actions/ControlAction;

    invoke-virtual {v0}, Landroid/service/controls/actions/ControlAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
