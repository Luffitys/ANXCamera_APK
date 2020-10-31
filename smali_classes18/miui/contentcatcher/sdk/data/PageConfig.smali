.class public Lmiui/contentcatcher/sdk/data/PageConfig;
.super Ljava/lang/Object;
.source "PageConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/contentcatcher/sdk/data/PageConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/CatcherInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/contentcatcher/sdk/data/PageConfig$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/data/PageConfig$1;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/data/PageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/CatcherInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    iput-object p1, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    iput-object p2, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCatchers()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/CatcherInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFeatures()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCatchers(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/CatcherInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    return-void
.end method

.method public setFeatures(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
