.class public final Landroid/service/controls/templates/ControlButton;
.super Ljava/lang/Object;
.source "ControlButton.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/controls/templates/ControlButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActionDescription:Ljava/lang/CharSequence;

.field private final mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/controls/templates/ControlButton$1;

    invoke-direct {v0}, Landroid/service/controls/templates/ControlButton$1;-><init>()V

    sput-object v0, Landroid/service/controls/templates/ControlButton;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Landroid/service/controls/templates/ControlButton;->mChecked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/templates/ControlButton;->mActionDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/CharSequence;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean p1, p0, Landroid/service/controls/templates/ControlButton;->mChecked:Z

    iput-object p2, p0, Landroid/service/controls/templates/ControlButton;->mActionDescription:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActionDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/templates/ControlButton;->mActionDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/controls/templates/ControlButton;->mChecked:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/service/controls/templates/ControlButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/controls/templates/ControlButton;->mActionDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    return-void
.end method
