.class public Lcom/miui/translationservice/provider/TranslationResult$Symbol;
.super Ljava/lang/Object;
.source "TranslationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/translationservice/provider/TranslationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Symbol"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/translationservice/provider/TranslationResult$Symbol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Part;",
            ">;"
        }
    .end annotation
.end field

.field private mPhAm:Ljava/lang/String;

.field private mPhEn:Ljava/lang/String;

.field private mWordSymbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/translationservice/provider/TranslationResult$Symbol$1;

    invoke-direct {v0}, Lcom/miui/translationservice/provider/TranslationResult$Symbol$1;-><init>()V

    sput-object v0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->setPhEn(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->setPhAm(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->setWordSymbol(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lcom/miui/translationservice/provider/TranslationResult$Symbol;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->setParts(Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/translationservice/provider/TranslationResult$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getParts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Part;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mParts:Ljava/util/List;

    return-object v0
.end method

.method public getPhAm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhAm:Ljava/lang/String;

    return-object v0
.end method

.method public getPhEn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhEn:Ljava/lang/String;

    return-object v0
.end method

.method public getWordSymbol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mWordSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public setParts(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/translationservice/provider/TranslationResult$Part;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mParts:Ljava/util/List;

    return-void
.end method

.method public setPhAm(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhAm:Ljava/lang/String;

    return-void
.end method

.method public setPhEn(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhEn:Ljava/lang/String;

    return-void
.end method

.method public setWordSymbol(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mWordSymbol:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhEn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhAm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mWordSymbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mParts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
