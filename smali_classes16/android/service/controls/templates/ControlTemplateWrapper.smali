.class public final Landroid/service/controls/templates/ControlTemplateWrapper;
.super Ljava/lang/Object;
.source "ControlTemplateWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/controls/templates/ControlTemplateWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mControlTemplate:Landroid/service/controls/templates/ControlTemplate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/controls/templates/ControlTemplateWrapper$1;

    invoke-direct {v0}, Landroid/service/controls/templates/ControlTemplateWrapper$1;-><init>()V

    sput-object v0, Landroid/service/controls/templates/ControlTemplateWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/service/controls/templates/ControlTemplate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/controls/templates/ControlTemplateWrapper;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getWrappedTemplate()Landroid/service/controls/templates/ControlTemplate;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/templates/ControlTemplateWrapper;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/controls/templates/ControlTemplateWrapper;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    invoke-virtual {v0}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
