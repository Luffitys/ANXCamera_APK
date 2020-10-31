.class public Lmiui/text/HindiPinyinConverter;
.super Ljava/lang/Object;
.source "HindiPinyinConverter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/text/HindiPinyinConverter;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUM_ADDITIONAL_CONSONANTS:I = 0x8

.field private static final NUM_CONSONANTS:I = 0x23

.field private static final NUM_DEPENDENT_VOWELS:I = 0xf

.field private static final NUM_INDEPENDENT_VOWELS:I = 0xc

.field private static final NUM_VARIOUS_SIGN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HindiPinyinConverter"

.field private static sArrayList:Lmiui/util/Pools$SimplePool; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$SimplePool<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConsonantSyllableEnding:Ljava/lang/String; = "\u094d"

.field private static sStringBuilder:Lmiui/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$SimplePool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdditionalConsonantPinyins:[Ljava/lang/String;

.field private mAdditionalConsonantUnicodes:[Ljava/lang/String;

.field private mConsonantPinyins:[Ljava/lang/String;

.field private mConsonantUnicodes:[Ljava/lang/String;

.field private mDependentVowelSignPinyins:[Ljava/lang/String;

.field private mDependentVowelSignUnicodes:[Ljava/lang/String;

.field private mDoubleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndependentVowelPinyins:[Ljava/lang/String;

.field private mIndependentVowelUnicodes:[Ljava/lang/String;

.field private mSingleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTripleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVariousSignPinyins:[Ljava/lang/String;

.field private mVariousSignUnicodes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiui/text/HindiPinyinConverter$1;

    invoke-direct {v0}, Lmiui/text/HindiPinyinConverter$1;-><init>()V

    sput-object v0, Lmiui/text/HindiPinyinConverter;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    new-instance v0, Lmiui/text/HindiPinyinConverter$2;

    invoke-direct {v0}, Lmiui/text/HindiPinyinConverter$2;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiui/text/HindiPinyinConverter;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    new-instance v0, Lmiui/text/HindiPinyinConverter$3;

    invoke-direct {v0}, Lmiui/text/HindiPinyinConverter$3;-><init>()V

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiui/text/HindiPinyinConverter;->sArrayList:Lmiui/util/Pools$SimplePool;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lmiui/text/HindiPinyinConverter;->initUnicodeAndPinyin()V

    invoke-direct {p0}, Lmiui/text/HindiPinyinConverter;->mapUnicodeToPinyin()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/HindiPinyinConverter$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/text/HindiPinyinConverter;-><init>()V

    return-void
.end method

.method private static varargs concat([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lmiui/text/HindiPinyinConverter;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/text/HindiPinyinConverter;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v2, v0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getInstance()Lmiui/text/HindiPinyinConverter;
    .registers 1

    sget-object v0, Lmiui/text/HindiPinyinConverter;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/HindiPinyinConverter;

    return-object v0
.end method

.method private initUnicodeAndPinyin()V
    .registers 25

    move-object/from16 v0, p0

    const/16 v1, 0xc

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lmiui/text/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lmiui/text/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    const/16 v2, 0xf

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    const/16 v3, 0x23

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    const/16 v3, 0x8

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lmiui/text/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lmiui/text/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v0, Lmiui/text/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v0, Lmiui/text/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiui/text/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    const-string v6, "\u0905"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "\u0906"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "\u0907"

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-string v6, "\u0908"

    aput-object v6, v5, v4

    const-string v6, "\u0909"

    const/4 v10, 0x4

    aput-object v6, v5, v10

    const-string v6, "\u090a"

    const/4 v11, 0x5

    aput-object v6, v5, v11

    const-string v6, "\u090b"

    const/4 v12, 0x6

    aput-object v6, v5, v12

    const-string v6, "\u090f"

    const/4 v13, 0x7

    aput-object v6, v5, v13

    const-string v6, "\u0910"

    aput-object v6, v5, v3

    const-string v6, "\u0911"

    const/16 v14, 0x9

    aput-object v6, v5, v14

    const-string v6, "\u0913"

    const/16 v15, 0xa

    aput-object v6, v5, v15

    const-string v6, "\u0914"

    const/16 v16, 0xb

    aput-object v6, v5, v16

    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    const-string v6, "a"

    aput-object v6, v5, v7

    const-string v6, "aa"

    aput-object v6, v5, v8

    const-string v17, "i"

    aput-object v17, v5, v9

    const-string v18, "ee"

    aput-object v18, v5, v4

    const-string v18, "u"

    aput-object v18, v5, v10

    const-string v18, "oo"

    aput-object v18, v5, v11

    const-string v18, "r"

    aput-object v18, v5, v12

    const-string v19, "e"

    aput-object v19, v5, v13

    const-string v20, "ai"

    aput-object v20, v5, v3

    const-string v20, "o"

    aput-object v20, v5, v14

    aput-object v20, v5, v15

    const-string v21, "au"

    aput-object v21, v5, v16

    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    const-string v21, "\u093e"

    aput-object v21, v5, v7

    const-string v21, "\u093f"

    aput-object v21, v5, v8

    const-string v21, "\u0940"

    aput-object v21, v5, v9

    const-string v21, "\u0941"

    aput-object v21, v5, v4

    const-string v21, "\u0942"

    aput-object v21, v5, v10

    const-string v21, "\u0943"

    aput-object v21, v5, v11

    const-string v21, "\u0944"

    aput-object v21, v5, v12

    const-string v21, "\u0945"

    aput-object v21, v5, v13

    const-string v21, "\u0947"

    aput-object v21, v5, v3

    const-string v21, "\u0948"

    aput-object v21, v5, v14

    const-string v21, "\u0949"

    aput-object v21, v5, v15

    const-string v21, "\u094b"

    aput-object v21, v5, v16

    const-string v21, "\u094c"

    aput-object v21, v5, v1

    const-string v21, "\u094e"

    const/16 v22, 0xd

    aput-object v21, v5, v22

    const-string v21, "\u094f"

    const/16 v23, 0xe

    aput-object v21, v5, v23

    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object v17, v5, v8

    const-string v6, "ee"

    aput-object v6, v5, v9

    const-string v6, "u"

    aput-object v6, v5, v4

    const-string v6, "oo"

    aput-object v6, v5, v10

    aput-object v18, v5, v11

    const-string v6, "R"

    aput-object v6, v5, v12

    aput-object v19, v5, v13

    aput-object v19, v5, v3

    const-string v6, "ai"

    aput-object v6, v5, v14

    aput-object v20, v5, v15

    aput-object v20, v5, v16

    const-string v6, "au"

    aput-object v6, v5, v1

    aput-object v19, v5, v22

    const-string v6, "aw"

    aput-object v6, v5, v23

    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    const-string v6, "\u0915"

    aput-object v6, v5, v7

    const-string v6, "\u0916"

    aput-object v6, v5, v8

    const-string v6, "\u0917"

    aput-object v6, v5, v9

    const-string v6, "\u0918"

    aput-object v6, v5, v4

    const-string v6, "\u0919"

    aput-object v6, v5, v10

    const-string v6, "\u091a"

    aput-object v6, v5, v11

    const-string v6, "\u091b"

    aput-object v6, v5, v12

    const-string v6, "\u091c"

    aput-object v6, v5, v13

    const-string v6, "\u091d"

    aput-object v6, v5, v3

    const-string v6, "\u091e"

    aput-object v6, v5, v14

    const-string v6, "\u091f"

    aput-object v6, v5, v15

    const-string v6, "\u0920"

    aput-object v6, v5, v16

    const-string v6, "\u0921"

    aput-object v6, v5, v1

    const-string v6, "\u0922"

    aput-object v6, v5, v22

    const-string v6, "\u0923"

    aput-object v6, v5, v23

    const-string v6, "\u0924"

    aput-object v6, v5, v2

    const/16 v6, 0x10

    const-string v17, "\u0925"

    aput-object v17, v5, v6

    const/16 v6, 0x11

    const-string v17, "\u0926"

    aput-object v17, v5, v6

    const/16 v6, 0x12

    const-string v17, "\u0927"

    aput-object v17, v5, v6

    const/16 v6, 0x13

    const-string v17, "\u0928"

    aput-object v17, v5, v6

    const/16 v6, 0x14

    const-string v17, "\u0929"

    aput-object v17, v5, v6

    const/16 v6, 0x15

    const-string v17, "\u092a"

    aput-object v17, v5, v6

    const/16 v6, 0x16

    const-string v17, "\u092b"

    aput-object v17, v5, v6

    const/16 v6, 0x17

    const-string v17, "\u092c"

    aput-object v17, v5, v6

    const/16 v6, 0x18

    const-string v17, "\u092d"

    aput-object v17, v5, v6

    const/16 v6, 0x19

    const-string v17, "\u092e"

    aput-object v17, v5, v6

    const/16 v6, 0x1a

    const-string v17, "\u092f"

    aput-object v17, v5, v6

    const/16 v6, 0x1b

    const-string v17, "\u0930"

    aput-object v17, v5, v6

    const/16 v6, 0x1c

    const-string v17, "\u0931"

    aput-object v17, v5, v6

    const/16 v6, 0x1d

    const-string v17, "\u0932"

    aput-object v17, v5, v6

    const/16 v6, 0x1e

    const-string v17, "\u0935"

    aput-object v17, v5, v6

    const/16 v6, 0x1f

    const-string v17, "\u0936"

    aput-object v17, v5, v6

    const/16 v6, 0x20

    const-string v17, "\u0937"

    aput-object v17, v5, v6

    const/16 v6, 0x21

    const-string v17, "\u0938"

    aput-object v17, v5, v6

    const/16 v6, 0x22

    const-string v17, "\u0939"

    aput-object v17, v5, v6

    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    const-string v6, "k"

    aput-object v6, v5, v7

    const-string v6, "kh"

    aput-object v6, v5, v8

    const-string v6, "g"

    aput-object v6, v5, v9

    const-string v6, "gh"

    aput-object v6, v5, v4

    const-string v6, "ng"

    aput-object v6, v5, v10

    const-string v6, "c"

    aput-object v6, v5, v11

    const-string v6, "ch"

    aput-object v6, v5, v12

    const-string v6, "j"

    aput-object v6, v5, v13

    const-string v6, "jh"

    aput-object v6, v5, v3

    const-string v3, "ny"

    aput-object v3, v5, v14

    const-string v3, "T"

    aput-object v3, v5, v15

    const-string v3, "Th"

    aput-object v3, v5, v16

    const-string v3, "D"

    aput-object v3, v5, v1

    const-string v1, "Dh"

    aput-object v1, v5, v22

    const-string v1, "N"

    aput-object v1, v5, v23

    const-string v1, "t"

    aput-object v1, v5, v2

    const/16 v1, 0x10

    const-string v2, "th"

    aput-object v2, v5, v1

    const/16 v1, 0x11

    const-string v2, "d"

    aput-object v2, v5, v1

    const/16 v1, 0x12

    const-string v2, "dh"

    aput-object v2, v5, v1

    const/16 v1, 0x13

    const-string v2, "n"

    aput-object v2, v5, v1

    const/16 v1, 0x14

    const-string v2, "Nn"

    aput-object v2, v5, v1

    const/16 v1, 0x15

    const-string v2, "p"

    aput-object v2, v5, v1

    const/16 v1, 0x16

    const-string v2, "ph"

    aput-object v2, v5, v1

    const/16 v1, 0x17

    const-string v2, "b"

    aput-object v2, v5, v1

    const/16 v1, 0x18

    const-string v2, "bh"

    aput-object v2, v5, v1

    const/16 v1, 0x19

    const-string v2, "m"

    aput-object v2, v5, v1

    const/16 v1, 0x1a

    const-string v2, "y"

    aput-object v2, v5, v1

    const/16 v1, 0x1b

    aput-object v18, v5, v1

    const/16 v1, 0x1c

    const-string v2, "R"

    aput-object v2, v5, v1

    const/16 v1, 0x1d

    const-string v2, "l"

    aput-object v2, v5, v1

    const/16 v1, 0x1e

    const-string v2, "v"

    aput-object v2, v5, v1

    const/16 v1, 0x1f

    const-string v2, "sh"

    aput-object v2, v5, v1

    const/16 v1, 0x20

    const-string v2, "S"

    aput-object v2, v5, v1

    const/16 v1, 0x21

    const-string v2, "s"

    aput-object v2, v5, v1

    const/16 v1, 0x22

    const-string v2, "h"

    aput-object v2, v5, v1

    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    const-string v2, "\u0958"

    aput-object v2, v1, v7

    const-string v2, "\u0959"

    aput-object v2, v1, v8

    const-string v2, "\u095a"

    aput-object v2, v1, v9

    const-string v2, "\u095b"

    aput-object v2, v1, v4

    const-string v2, "\u095c"

    aput-object v2, v1, v10

    const-string v2, "\u095d"

    aput-object v2, v1, v11

    const-string v2, "\u095e"

    aput-object v2, v1, v12

    const-string v2, "\u095f"

    aput-object v2, v1, v13

    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    const-string v2, "q"

    aput-object v2, v1, v7

    const-string v2, "khh"

    aput-object v2, v1, v8

    const-string v2, "ghh"

    aput-object v2, v1, v9

    const-string v2, "z"

    aput-object v2, v1, v4

    const-string v2, "Ddh"

    aput-object v2, v1, v10

    const-string v2, "rh"

    aput-object v2, v1, v11

    const-string v2, "f"

    aput-object v2, v1, v12

    const-string v2, "Y"

    aput-object v2, v1, v13

    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    const-string v2, "\u0901"

    aput-object v2, v1, v7

    const-string v2, "\u0902"

    aput-object v2, v1, v8

    const-string v2, "\u0903"

    aput-object v2, v1, v9

    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    const-string v2, "an"

    aput-object v2, v1, v7

    const-string v2, "an"

    aput-object v2, v1, v8

    const-string v2, "ah"

    aput-object v2, v1, v9

    return-void
.end method

.method private mapUnicodeToPinyin()V
    .registers 11

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x23

    if-ge v0, v1, :cond_26

    iget-object v1, p0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_26
    const/4 v0, 0x0

    :goto_27
    const/16 v2, 0xc

    if-ge v0, v2, :cond_3b

    iget-object v2, p0, Lmiui/text/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lmiui/text/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    const/16 v3, 0x8

    if-ge v0, v3, :cond_50

    iget-object v3, p0, Lmiui/text/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_50
    const/4 v0, 0x0

    :goto_51
    const/4 v4, 0x3

    const/16 v5, 0xf

    if-ge v0, v1, :cond_cb

    const/4 v6, 0x0

    :goto_57
    if-ge v6, v5, :cond_8f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    :cond_8f
    const/4 v5, 0x0

    :goto_90
    if-ge v5, v4, :cond_c8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiui/text/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_90

    :cond_c8
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_cb
    const/4 v0, 0x0

    :goto_cc
    if-ge v0, v3, :cond_143

    const/4 v6, 0x0

    :goto_cf
    if-ge v6, v5, :cond_107

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_cf

    :cond_107
    const/4 v6, 0x0

    :goto_108
    if-ge v6, v4, :cond_140

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_108

    :cond_140
    add-int/lit8 v0, v0, 0x1

    goto :goto_cc

    :cond_143
    const/4 v0, 0x0

    :goto_144
    if-ge v0, v1, :cond_167

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u094d"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v6, v6, v0

    iget-object v7, p0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_144

    :cond_167
    const/4 v0, 0x0

    :goto_168
    if-ge v0, v2, :cond_1a7

    const/16 v3, 0xf

    :goto_16c
    if-ge v3, v5, :cond_1a4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/text/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_16c

    :cond_1a4
    add-int/lit8 v0, v0, 0x1

    goto :goto_168

    :cond_1a7
    const/4 v0, 0x0

    :goto_1a8
    if-ge v0, v1, :cond_1ff

    const/4 v2, 0x0

    :goto_1ab
    if-ge v2, v5, :cond_1fc

    const/4 v3, 0x0

    :goto_1ae
    if-ge v3, v4, :cond_1f9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiui/text/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v8, v8, v3

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1ae

    :cond_1f9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ab

    :cond_1fc
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a8

    :cond_1ff
    iget-object v0, p0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    const-string v1, "\u0905\u0902"

    const-string v2, "am"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static stringToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    sget-object v0, Lmiui/text/HindiPinyinConverter;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_d
    if-ge v1, v2, :cond_39

    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1d

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v1, v6

    :cond_1d
    const/16 v6, 0x80

    if-ge v3, v6, :cond_25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_25
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "\\u%04x"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_37
    add-int/2addr v1, v5

    goto :goto_d

    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/text/HindiPinyinConverter;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v2, v0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lmiui/text/HindiPinyinConverter;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v4}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    :goto_15
    const-string v7, "HindiPinyinConverter"

    if-ge v5, v6, :cond_185

    invoke-static {v1, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int v12, v5, v11

    invoke-virtual {v1, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    add-int v9, v5, v11

    if-ge v9, v6, :cond_3f

    invoke-static {v1, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int v8, v9, v11

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :cond_3f
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5b

    iget-object v7, v0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    iget-object v7, v0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/String;

    :cond_56
    move v5, v9

    move/from16 v21, v6

    goto/16 :goto_17a

    :cond_5b
    add-int v8, v9, v11

    if-ge v8, v6, :cond_70

    invoke-static {v1, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    move/from16 v18, v5

    add-int v5, v8, v11

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto :goto_72

    :cond_70
    move/from16 v18, v5

    :goto_72
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v1, 0x2

    if-eqz v5, :cond_e9

    new-array v5, v1, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v12, v5, v17

    const/16 v16, 0x1

    aput-object v14, v5, v16

    invoke-static {v5}, Lmiui/text/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    add-int v1, v9, v11

    move/from16 v21, v6

    goto :goto_e6

    :cond_9d
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    move v1, v9

    move/from16 v21, v6

    goto :goto_e6

    :cond_b2
    move v1, v9

    move/from16 v18, v1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v12, v1, v17

    const/16 v16, 0x1

    aput-object v14, v1, v16

    const/16 v19, 0x2

    aput-object v15, v1, v19

    move-object/from16 v20, v5

    move/from16 v21, v6

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/String;

    aput-object v12, v6, v17

    aput-object v14, v6, v16

    aput-object v15, v6, v19

    invoke-static {v6}, Lmiui/text/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/text/HindiPinyinConverter;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const-string v5, "Ignore unknown hindi: %s%s%s %s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v1, v18

    :goto_e6
    move v5, v1

    goto/16 :goto_17a

    :cond_e9
    move/from16 v21, v6

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v12, v5, v6

    const/16 v16, 0x1

    aput-object v14, v5, v16

    invoke-static {v5}, Lmiui/text/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v22, v10

    new-array v10, v1, [Ljava/lang/String;

    aput-object v5, v10, v6

    aput-object v15, v10, v16

    invoke-static {v10}, Lmiui/text/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lmiui/text/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11c

    iget-object v6, v0, Lmiui/text/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/lang/String;

    add-int v6, v8, v11

    move v5, v6

    move/from16 v10, v22

    goto :goto_17a

    :cond_11c
    iget-object v6, v0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_133

    iget-object v6, v0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/lang/String;

    add-int v6, v9, v11

    move v5, v6

    move/from16 v10, v22

    goto :goto_17a

    :cond_133
    iget-object v6, v0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_149

    iget-object v6, v0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/lang/String;

    move v6, v9

    move v5, v6

    move/from16 v10, v22

    goto :goto_17a

    :cond_149
    move v6, v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v12, v10, v17

    const/16 v16, 0x1

    aput-object v14, v10, v16

    const/16 v18, 0x2

    aput-object v15, v10, v18

    move-object/from16 v19, v1

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    aput-object v12, v1, v17

    aput-object v14, v1, v16

    aput-object v15, v1, v18

    invoke-static {v1}, Lmiui/text/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/text/HindiPinyinConverter;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    const-string v0, "Ignore unknown hindi: \'%s%s%s\' \'%s\'"

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    move/from16 v10, v22

    :goto_17a
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, v21

    goto/16 :goto_15

    :cond_185
    move/from16 v18, v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmiui/text/HindiPinyinConverter;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v1, v4}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sub-long v8, v5, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v1, v9

    const-string v8, "hindiToPinyin(): using time %d ms"

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public hindiToPinyins(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    sget-object v0, Lmiui/text/HindiPinyinConverter;->sArrayList:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmiui/text/HindiPinyinConverter;->hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "ee"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "ii"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    const-string v2, "oo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v3, "uu"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    const-string v3, "w"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    sget-object v2, Lmiui/text/HindiPinyinConverter;->sArrayList:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v2}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "aa"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_78

    const-string v6, "a"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_78
    goto :goto_4e

    :cond_79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    sget-object v4, Lmiui/text/HindiPinyinConverter;->sArrayList:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v4, v0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    sget-object v4, Lmiui/text/HindiPinyinConverter;->sArrayList:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v4, v2}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object v3
.end method
