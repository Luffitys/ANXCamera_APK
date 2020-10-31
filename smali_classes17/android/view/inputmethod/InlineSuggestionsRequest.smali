.class public final Landroid/view/inputmethod/InlineSuggestionsRequest;
.super Ljava/lang/Object;
.source "InlineSuggestionsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InlineSuggestionsRequest$Builder;,
        Landroid/view/inputmethod/InlineSuggestionsRequest$BaseBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUGGESTION_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private mHostDisplayId:I

.field private mHostInputToken:Landroid/os/IBinder;

.field private mHostPackageName:Ljava/lang/String;

.field private final mInlinePresentationSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxSuggestionCount:I

.field private mSupportedLocales:Landroid/os/LocaleList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/inputmethod/InlineSuggestionsRequest$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InlineSuggestionsRequest$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InlineSuggestionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/lang/String;Landroid/os/LocaleList;Landroid/os/Bundle;Landroid/os/IBinder;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/LocaleList;",
            "Landroid/os/Bundle;",
            "Landroid/os/IBinder;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p4, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p5, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p6, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    iput p7, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->onConstructed()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-class v3, Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/LocaleList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->unparcelHostInputToken(Landroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    iput-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    const-class v8, Landroid/annotation/NonNull;

    const/4 v9, 0x0

    invoke-static {v8, v9, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    const-class v8, Landroid/annotation/NonNull;

    invoke-static {v8, v9, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    const-class v8, Landroid/annotation/NonNull;

    invoke-static {v8, v9, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v5, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    const-class v8, Landroid/annotation/NonNull;

    invoke-static {v8, v9, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v6, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    iput v7, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    invoke-direct {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->onConstructed()V

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultMaxSuggestionCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultHostPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/LocaleList;
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultSupportedLocales()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Bundle;
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/IBinder;
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultHostInputToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()I
    .registers 1

    invoke-static {}, Landroid/view/inputmethod/InlineSuggestionsRequest;->defaultHostDisplayId()I

    move-result v0

    return v0
.end method

.method private static defaultExtras()Landroid/os/Bundle;
    .registers 1

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method private static defaultHostDisplayId()I
    .registers 1

    const/4 v0, -0x1

    return v0
.end method

.method private static defaultHostInputToken()Landroid/os/IBinder;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static defaultHostPackageName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static defaultMaxSuggestionCount()I
    .registers 1

    const v0, 0x7fffffff

    return v0
.end method

.method private static defaultSupportedLocales()Landroid/os/LocaleList;
    .registers 1

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method private extrasEquals(Landroid/os/Bundle;)Z
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->bundleEquals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private onConstructed()V
    .registers 4

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void
.end method

.method private parcelHostInputToken(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method private unparcelHostInputToken(Landroid/os/Parcel;)Landroid/os/IBinder;
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
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

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_54

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/inputmethod/InlineSuggestionsRequest;

    iget v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    iget v4, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    if-ne v3, v4, :cond_52

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v3}, Landroid/view/inputmethod/InlineSuggestionsRequest;->extrasEquals(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget v3, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    iget v4, v2, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    if-ne v3, v4, :cond_52

    goto :goto_53

    :cond_52
    move v0, v1

    :goto_53
    return v0

    :cond_54
    :goto_54
    return v1
.end method

.method public filterContentTypes()V
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/internal/widget/InlinePresentationStyleUtils;->filterContentTypes(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/inline/InlinePresentationSpec;

    invoke-virtual {v1}, Landroid/widget/inline/InlinePresentationSpec;->filterContentTypes()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHostDisplayId()I
    .registers 2

    iget v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    return v0
.end method

.method public getHostInputToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getHostPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInlinePresentationSpecs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/inline/InlinePresentationSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    return-object v0
.end method

.method public getMaxSuggestionCount()I
    .registers 2

    iget v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    return v0
.end method

.method public getSupportedLocales()Landroid/os/LocaleList;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    add-int/2addr v1, v2

    return v1
.end method

.method public setHostDisplayId(I)V
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    return-void
.end method

.method public setHostInputToken(Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlineSuggestionsRequest { maxSuggestionCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inlinePresentationSpecs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedLocales = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostInputToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostDisplayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostInputToken:Landroid/os/IBinder;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mMaxSuggestionCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mInlinePresentationSpecs:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mSupportedLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InlineSuggestionsRequest;->parcelHostInputToken(Landroid/os/Parcel;I)V

    iget v1, p0, Landroid/view/inputmethod/InlineSuggestionsRequest;->mHostDisplayId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
