.class public Lmiui/slide/AppSlideConfig;
.super Ljava/lang/Object;
.source "AppSlideConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/slide/AppSlideConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "AppSlideConfig"


# instance fields
.field public mPackageName:Ljava/lang/String;

.field public mRecentClickView:Landroid/view/View;

.field private final mSlideConfigArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/slide/SlideConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/slide/AppSlideConfig$1;

    invoke-direct {v0}, Lmiui/slide/AppSlideConfig$1;-><init>()V

    sput-object v0, Lmiui/slide/AppSlideConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/slide/AppSlideConfig;->mSlideConfigArray:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/slide/AppSlideConfig;->mSlideConfigArray:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/slide/AppSlideConfig;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lmiui/slide/AppSlideConfig;->mSlideConfigArray:Ljava/util/List;

    sget-object v1, Lmiui/slide/SlideConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/slide/AppSlideConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/slide/AppSlideConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/slide/AppSlideConfig;->mSlideConfigArray:Ljava/util/List;

    iput-object p1, p0, Lmiui/slide/AppSlideConfig;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addSlideConfig(Lmiui/slide/SlideConfig;)V
    .registers 3

    iget-object v0, p0, Lmiui/slide/AppSlideConfig;->mSlideConfigArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public matchStartingActivity(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lmiui/slide/AppSlideConfig;->mSlideConfigArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/slide/SlideConfig;

    iget-object v2, v1, Lmiui/slide/SlideConfig;->mStartingActivity:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    goto :goto_6

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public matchVersionSlideConfig(I)V
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lmiui/slide/AppSlideConfig;->mSlideConfigArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/slide/SlideConfig;

    iget v4, v3, Lmiui/slide/SlideConfig;->mKeyCode:I

    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_26

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_26
    iget v4, v3, Lmiui/slide/SlideConfig;->mKeyCode:I

    const/16 v5, 0x2bd

    if-ne v4, v5, :cond_2f

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_2f
    goto :goto_10

    :cond_30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3a
    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/slide/SlideConfig;

    iget v6, v5, Lmiui/slide/SlideConfig;->mVersionCode:I

    if-ge p1, v6, :cond_4b

    goto :goto_3a

    :cond_4b
    iget v6, v5, Lmiui/slide/SlideConfig;->mVersionCode:I

    if-ge v3, v6, :cond_58

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v5, Lmiui/slide/SlideConfig;->mVersionCode:I

    goto :goto_5f

    :cond_58
    iget v6, v5, Lmiui/slide/SlideConfig;->mVersionCode:I

    if-ne v3, v6, :cond_3a

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5f
    goto :goto_3a

    :cond_60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6a
    :goto_6a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_90

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/slide/SlideConfig;

    iget v8, v7, Lmiui/slide/SlideConfig;->mVersionCode:I

    if-ge p1, v8, :cond_7b

    goto :goto_6a

    :cond_7b
    iget v8, v7, Lmiui/slide/SlideConfig;->mVersionCode:I

    if-ge v5, v8, :cond_88

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, v7, Lmiui/slide/SlideConfig;->mVersionCode:I

    goto :goto_8f

    :cond_88
    iget v8, v7, Lmiui/slide/SlideConfig;->mVersionCode:I

    if-ne v5, v8, :cond_6a

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8f
    goto :goto_6a

    :cond_90
    iget-object v6, p0, Lmiui/slide/AppSlideConfig;->mSlideConfigArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lmiui/slide/AppSlideConfig;->mSlideConfigArray:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lmiui/slide/AppSlideConfig;->mSlideConfigArray:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppSlideConfig{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/slide/AppSlideConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryGotoTarget(ILandroid/app/Activity;Landroid/view/View;)I
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/slide/AppSlideConfig;->mSlideConfigArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/slide/SlideConfig;

    iget v3, v2, Lmiui/slide/SlideConfig;->mKeyCode:I

    if-ne v3, p1, :cond_2e

    iget-object v3, v2, Lmiui/slide/SlideConfig;->mStartingActivity:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2, p2, p3}, Lmiui/slide/SlideConfig;->tryGotoTarget(Landroid/app/Activity;Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_2e

    goto :goto_2f

    :cond_2e
    goto :goto_7

    :cond_2f
    :goto_2f
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lmiui/slide/AppSlideConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/slide/AppSlideConfig;->mSlideConfigArray:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
