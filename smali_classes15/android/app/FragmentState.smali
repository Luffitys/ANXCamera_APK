.class final Landroid/app/FragmentState;
.super Ljava/lang/Object;
.source "FragmentState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mHidden:Z

.field final mIndex:I

.field mInstance:Landroid/app/Fragment;

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/FragmentState$1;

    invoke-direct {v0}, Landroid/app/FragmentState$1;-><init>()V

    sput-object v0, Landroid/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/app/Fragment;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    iput v0, p0, Landroid/app/FragmentState;->mIndex:I

    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    iget v0, p1, Landroid/app/Fragment;->mFragmentId:I

    iput v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    iget v0, p1, Landroid/app/Fragment;->mContainerId:I

    iput v0, p0, Landroid/app/FragmentState;->mContainerId:I

    iget-object v0, p1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/app/Fragment;->mRetainInstance:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    iget-object v0, p1, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    iput-boolean v0, p0, Landroid/app/FragmentState;->mHidden:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentState;->mIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    iput-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/FragmentState;->mContainerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    move v0, v1

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    iput-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    move v0, v1

    goto :goto_42

    :cond_41
    move v0, v2

    :goto_42
    iput-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_52

    :cond_51
    move v1, v2

    :goto_52
    iput-boolean v1, p0, Landroid/app/FragmentState;->mHidden:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;Landroid/app/FragmentManagerNonConfig;)Landroid/app/Fragment;
    .registers 8

    iget-object v0, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    if-nez v0, :cond_93

    invoke-virtual {p1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_13
    if-eqz p2, :cond_20

    iget-object v1, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    goto :goto_2a

    :cond_20
    iget-object v1, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    :goto_2a
    iget-object v1, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-object v2, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_3b
    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget v2, p0, Landroid/app/FragmentState;->mIndex:I

    invoke-virtual {v1, v2, p3}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-boolean v2, p0, Landroid/app/FragmentState;->mFromLayout:Z

    iput-boolean v2, v1, Landroid/app/Fragment;->mFromLayout:Z

    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/Fragment;->mRestored:Z

    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget v2, p0, Landroid/app/FragmentState;->mFragmentId:I

    iput v2, v1, Landroid/app/Fragment;->mFragmentId:I

    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget v2, p0, Landroid/app/FragmentState;->mContainerId:I

    iput v2, v1, Landroid/app/Fragment;->mContainerId:I

    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-object v2, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-boolean v2, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    iput-boolean v2, v1, Landroid/app/Fragment;->mRetainInstance:Z

    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-boolean v2, p0, Landroid/app/FragmentState;->mDetached:Z

    iput-boolean v2, v1, Landroid/app/Fragment;->mDetached:Z

    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-boolean v2, p0, Landroid/app/FragmentState;->mHidden:Z

    iput-boolean v2, v1, Landroid/app/Fragment;->mHidden:Z

    iget-object v1, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iget-object v2, p1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iput-object v2, v1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_93

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instantiated fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    iget-object v0, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iput-object p4, v0, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    iget-object v0, p0, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/FragmentState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/FragmentState;->mFromLayout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/FragmentState;->mFragmentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/FragmentState;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/FragmentState;->mRetainInstance:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/FragmentState;->mDetached:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/app/FragmentState;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
