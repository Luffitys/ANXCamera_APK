.class public final Landroid/view/inputmethod/InlineSuggestion;
.super Ljava/lang/Object;
.source "InlineSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;,
        Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;,
        Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "InlineSuggestion"

.field static sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

.field private final mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

.field private mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_16

    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImplParceling;-><init>(Landroid/view/inputmethod/InlineSuggestion$1;)V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    :cond_16
    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InlineSuggestion$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InlineSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    sget-object v1, Landroid/view/inputmethod/InlineSuggestionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InlineSuggestionInfo;

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_16

    move-object v2, v3

    goto :goto_1e

    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object v2

    :goto_1e
    sget-object v4, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    invoke-interface {v4, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iput-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    const-class v5, Landroid/annotation/NonNull;

    invoke-static {v5, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    iput-object v4, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    iput-object p3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private declared-synchronized getInlineContentCallback(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;)",
            "Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    if-nez v0, :cond_e

    new-instance v0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-direct {v0, p1, v1, p2, p3}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;-><init>(Landroid/content/Context;Lcom/android/internal/view/inline/IInlineContentProvider;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #inflate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static isValid(III)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, -0x2

    if-ne p0, v1, :cond_5

    return v0

    :cond_5
    if-lt p0, p1, :cond_a

    if-gt p0, p2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$inflate$0(Ljava/util/function/Consumer;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$inflate$1(Ljava/util/function/Consumer;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static newInlineSuggestion(Landroid/view/inputmethod/InlineSuggestionInfo;)Landroid/view/inputmethod/InlineSuggestion;
    .registers 3

    new-instance v0, Landroid/view/inputmethod/InlineSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

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

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/inputmethod/InlineSuggestion;

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iget-object v4, v2, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    return v0

    :cond_36
    :goto_36
    return v1
.end method

.method public getContentProvider()Lcom/android/internal/view/inline/IInlineContentProvider;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    return-object v0
.end method

.method public getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    return-object v0
.end method

.method public getInlineContentCallback()Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public inflate(Landroid/content/Context;Landroid/util/Size;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/Size;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/inline/InlineContentView;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionInfo;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InlineSuggestionInfo;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/view/inputmethod/InlineSuggestion;->isValid(III)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/view/inputmethod/InlineSuggestion;->isValid(III)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-direct {p0, p1, p3, p4}, Landroid/view/inputmethod/InlineSuggestion;->getInlineContentCallback(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    move-result-object v2

    iput-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    if-nez v2, :cond_4b

    new-instance v2, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$1Z84E2nGcL7UkGjb1l1YHUY09Qo;

    invoke-direct {v2, p4}, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$1Z84E2nGcL7UkGjb1l1YHUY09Qo;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_4b
    :try_start_4b
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    new-instance v5, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;

    iget-object v6, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-direct {v5, v6}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackWrapper;-><init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/view/inline/IInlineContentProvider;->provideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_5d} :catch_5e

    goto :goto_7d

    :catch_5e
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating suggestion content surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InlineSuggestion"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$Svlod0cVfjyzxKJchAioH7zzqJQ;

    invoke-direct {v3, p4}, Landroid/view/inputmethod/-$$Lambda$InlineSuggestion$Svlod0cVfjyzxKJchAioH7zzqJQ;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p3, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_7d
    return-void

    :cond_7e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size is neither between min:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", nor wrap_content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlineSuggestion { info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentProvider = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inlineContentCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_8
    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mInfo:Landroid/view/inputmethod/InlineSuggestionInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion;->mContentProvider:Lcom/android/internal/view/inline/IInlineContentProvider;

    if-eqz v1, :cond_1e

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    :cond_1e
    sget-object v1, Landroid/view/inputmethod/InlineSuggestion;->sParcellingForInlineContentCallback:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Landroid/view/inputmethod/InlineSuggestion;->mInlineContentCallback:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    return-void
.end method
