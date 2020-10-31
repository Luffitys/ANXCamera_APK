.class public final Landroid/service/contentcapture/SnapshotData;
.super Ljava/lang/Object;
.source "SnapshotData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/contentcapture/SnapshotData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssistContent:Landroid/app/assist/AssistContent;

.field private final mAssistData:Landroid/os/Bundle;

.field private final mAssistStructure:Landroid/app/assist/AssistStructure;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/contentcapture/SnapshotData$1;

    invoke-direct {v0}, Landroid/service/contentcapture/SnapshotData$1;-><init>()V

    sput-object v0, Landroid/service/contentcapture/SnapshotData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/contentcapture/SnapshotData;->mAssistData:Landroid/os/Bundle;

    iput-object p2, p0, Landroid/service/contentcapture/SnapshotData;->mAssistStructure:Landroid/app/assist/AssistStructure;

    iput-object p3, p0, Landroid/service/contentcapture/SnapshotData;->mAssistContent:Landroid/app/assist/AssistContent;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistData:Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/assist/AssistStructure;

    iput-object v1, p0, Landroid/service/contentcapture/SnapshotData;->mAssistStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistContent;

    iput-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistContent:Landroid/app/assist/AssistContent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAssistContent()Landroid/app/assist/AssistContent;
    .registers 2

    iget-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistContent:Landroid/app/assist/AssistContent;

    return-object v0
.end method

.method public getAssistData()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getAssistStructure()Landroid/app/assist/AssistStructure;
    .registers 2

    iget-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistStructure:Landroid/app/assist/AssistStructure;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/contentcapture/SnapshotData;->mAssistContent:Landroid/app/assist/AssistContent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
