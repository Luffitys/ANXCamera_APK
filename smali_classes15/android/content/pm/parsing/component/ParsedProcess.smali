.class public Landroid/content/pm/parsing/component/ParsedProcess;
.super Ljava/lang/Object;
.source "ParsedProcess.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/parsing/component/ParsedProcess;",
            ">;"
        }
    .end annotation
.end field

.field static sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected deniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected gwpAsanMode:I

.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/parsing/component/ParsedProcess;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_15

    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/parsing/component/ParsedProcess;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    :cond_15
    new-instance v0, Landroid/content/pm/parsing/component/ParsedProcess$1;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedProcess$1;-><init>()V

    sput-object v0, Landroid/content/pm/parsing/component/ParsedProcess;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->gwpAsanMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/parsing/component/ParsedProcess;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->gwpAsanMode:I

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedProcess;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->name:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->gwpAsanMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/content/pm/parsing/component/ParsedProcess;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    invoke-interface {v1, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->name:Ljava/lang/String;

    const-class v3, Landroid/annotation/NonNull;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    const-class v3, Landroid/annotation/NonNull;

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v2, p0, Landroid/content/pm/parsing/component/ParsedProcess;->gwpAsanMode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->gwpAsanMode:I

    iput-object p1, p0, Landroid/content/pm/parsing/component/ParsedProcess;->name:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p3, p0, Landroid/content/pm/parsing/component/ParsedProcess;->gwpAsanMode:I

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public addStateFrom(Landroid/content/pm/parsing/component/ParsedProcess;)V
    .registers 4

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    iget-object v1, p1, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDeniedPermissions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public getGwpAsanMode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->gwpAsanMode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v0, Landroid/content/pm/parsing/component/ParsedProcess;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Landroid/content/pm/parsing/component/ParsedProcess;->deniedPermissions:Ljava/util/Set;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedProcess;->gwpAsanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
