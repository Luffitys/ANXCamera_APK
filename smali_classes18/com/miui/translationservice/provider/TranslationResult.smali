.class public Lcom/miui/translationservice/provider/TranslationResult;
.super Ljava/lang/Object;
.source "TranslationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/translationservice/provider/TranslationResult$Phrase;,
        Lcom/miui/translationservice/provider/TranslationResult$Part;,
        Lcom/miui/translationservice/provider/TranslationResult$Symbol;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/translationservice/provider/TranslationResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_ERROR_NETWORK:I = -0x2

.field public static final RESULT_ERROR_UNKNOWN:I = -0x1

.field public static final RESULT_SUCCESS:I


# instance fields
.field private mCopyright:Ljava/lang/String;

.field private mDetailLink:Ljava/lang/String;

.field private mPhrases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Phrase;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:I

.field private mSymbols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWordName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/translationservice/provider/TranslationResult$1;

    invoke-direct {v0}, Lcom/miui/translationservice/provider/TranslationResult$1;-><init>()V

    sput-object v0, Lcom/miui/translationservice/provider/TranslationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const-class v0, Lcom/miui/translationservice/provider/TranslationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setCopyright(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setDetailLink(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setStatus(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setWordName(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setSymbols(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, v2}, Lcom/miui/translationservice/provider/TranslationResult;->setPhrases(Ljava/util/List;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, v3}, Lcom/miui/translationservice/provider/TranslationResult;->setTranslations(Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/translationservice/provider/TranslationResult$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCopyright()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mCopyright:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailLink()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mDetailLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPhrases()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Phrase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mPhrases:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mStatus:I

    return v0
.end method

.method public getSymbols()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Symbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mSymbols:Ljava/util/List;

    return-object v0
.end method

.method public getTranslations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mTranslations:Ljava/util/List;

    return-object v0
.end method

.method public getWordName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mWordName:Ljava/lang/String;

    return-object v0
.end method

.method public setCopyright(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mCopyright:Ljava/lang/String;

    return-void
.end method

.method public setDetailLink(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mDetailLink:Ljava/lang/String;

    return-void
.end method

.method public setPhrases(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Phrase;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mPhrases:Ljava/util/List;

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    iput p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mStatus:I

    return-void
.end method

.method public setSymbols(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Symbol;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mSymbols:Ljava/util/List;

    return-void
.end method

.method public setTranslations(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mTranslations:Ljava/util/List;

    return-void
.end method

.method public setWordName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mWordName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mCopyright:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mDetailLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mWordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mSymbols:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mPhrases:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mTranslations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
