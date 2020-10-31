.class public final Landroid/widget/inline/InlinePresentationSpec;
.super Ljava/lang/Object;
.source "InlinePresentationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/inline/InlinePresentationSpec$Builder;,
        Landroid/widget/inline/InlinePresentationSpec$BaseBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMaxSize:Landroid/util/Size;

.field private final mMinSize:Landroid/util/Size;

.field private final mStyle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/widget/inline/InlinePresentationSpec$1;

    invoke-direct {v0}, Landroid/widget/inline/InlinePresentationSpec$1;-><init>()V

    sput-object v0, Landroid/widget/inline/InlinePresentationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    const-class v3, Landroid/annotation/NonNull;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    const-class v3, Landroid/annotation/NonNull;

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    const-class v3, Landroid/annotation/NonNull;

    invoke-static {v3, v4, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/util/Size;Landroid/util/Size;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p3, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method static synthetic access$000()Landroid/os/Bundle;
    .registers 1

    invoke-static {}, Landroid/widget/inline/InlinePresentationSpec;->defaultStyle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static defaultStyle()Landroid/os/Bundle;
    .registers 1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method private styleEquals(Landroid/os/Bundle;)Z
    .registers 3

    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->bundleEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/widget/inline/InlinePresentationSpec;

    iget-object v3, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    iget-object v4, v2, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    iget-object v4, v2, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, v2, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-direct {p0, v3}, Landroid/widget/inline/InlinePresentationSpec;->styleEquals(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    return v0

    :cond_34
    :goto_34
    return v1
.end method

.method public filterContentTypes()V
    .registers 2

    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->filterContentTypes(Landroid/os/Bundle;)V

    return-void
.end method

.method public getMaxSize()Landroid/util/Size;
    .registers 2

    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    return-object v0
.end method

.method public getMinSize()Landroid/util/Size;
    .registers 2

    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    return-object v0
.end method

.method public getStyle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlinePresentationSpec { minSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", style = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMinSize:Landroid/util/Size;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mMaxSize:Landroid/util/Size;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    iget-object v0, p0, Landroid/widget/inline/InlinePresentationSpec;->mStyle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
