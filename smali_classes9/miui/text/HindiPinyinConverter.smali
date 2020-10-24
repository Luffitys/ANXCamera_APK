.class public Lmiui/text/HindiPinyinConverter;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z = false

.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;

.field private static final NUM_ADDITIONAL_CONSONANTS:I = 0x8

.field private static final NUM_CONSONANTS:I = 0x23

.field private static final NUM_DEPENDENT_VOWELS:I = 0xf

.field private static final NUM_INDEPENDENT_VOWELS:I = 0xc

.field private static final NUM_VARIOUS_SIGN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HindiPinyinConverter"

.field private static sArrayList:Lmiui/util/Pools$SimplePool; = null

.field private static final sConsonantSyllableEnding:Ljava/lang/String; = "\u094d"

.field private static sStringBuilder:Lmiui/util/Pools$SimplePool;


# instance fields
.field private mAdditionalConsonantPinyins:[Ljava/lang/String;

.field private mAdditionalConsonantUnicodes:[Ljava/lang/String;

.field private mConsonantPinyins:[Ljava/lang/String;

.field private mConsonantUnicodes:[Ljava/lang/String;

.field private mDependentVowelSignPinyins:[Ljava/lang/String;

.field private mDependentVowelSignUnicodes:[Ljava/lang/String;

.field private mDoubleCharacters:Ljava/util/HashMap;

.field private mIndependentVowelPinyins:[Ljava/lang/String;

.field private mIndependentVowelUnicodes:[Ljava/lang/String;

.field private mSingleCharacters:Ljava/util/HashMap;

.field private mTripleCharacters:Ljava/util/HashMap;

.field private mVariousSignPinyins:[Ljava/lang/String;

.field private mVariousSignUnicodes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lmiui/text/HindiPinyinConverter;->initUnicodeAndPinyin()V

    invoke-direct {p0}, Lmiui/text/HindiPinyinConverter;->mapUnicodeToPinyin()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/HindiPinyinConverter$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/text/HindiPinyinConverter;-><init>()V

    return-void
.end method

.method private static varargs concat([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lmiui/text/HindiPinyinConverter;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lmiui/text/HindiPinyinConverter;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getInstance()Lmiui/text/HindiPinyinConverter;
    .locals 1

    sget-object v0, Lmiui/text/HindiPinyinConverter;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/HindiPinyinConverter;

    return-object v0
.end method

.method private initUnicodeAndPinyin()V
    .locals 24

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

    iget-object v0, v0, Lmiui/text/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    const-string v1, "an"

    aput-object v1, v0, v7

    const-string v1, "an"

    aput-object v1, v0, v8

    const-string v1, "ah"

    aput-object v1, v0, v9

    return-void
.end method

.method private mapUnicodeToPinyin()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x23

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v2, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/16 v3, 0xc

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lmiui/text/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    const/16 v4, 0x8

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lmiui/text/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lmiui/text/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    aget-object v5, v5, v1

    iget-object v6, p0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    const/4 v5, 0x3

    const/16 v6, 0xf

    if-ge v1, v2, :cond_5

    move v7, v0

    :goto_4
    if-ge v7, v6, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    move v6, v0

    :goto_5
    if-ge v6, v5, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_6
    if-ge v1, v4, :cond_8

    move v7, v0

    :goto_7
    if-ge v7, v6, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_6
    move v7, v0

    :goto_8
    if-ge v7, v5, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u094d"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v7, v7, v1

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_a
    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_d

    move v3, v0

    :goto_c
    if-ge v3, v6, :cond_c

    move v4, v0

    :goto_d
    if-ge v4, v5, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiui/text/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmiui/text/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_d
    iget-object p0, p0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    const-string v0, "\u0905\u0902"

    const-string v1, "am"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static stringToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lmiui/text/HindiPinyinConverter;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v3, v5

    :cond_0
    const/16 v5, 0x80

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "\\u%04x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/2addr v3, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lmiui/text/HindiPinyinConverter;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lmiui/text/HindiPinyinConverter;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v4}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const-string v8, "HindiPinyinConverter"

    if-ge v7, v5, :cond_a

    invoke-static {v1, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int v11, v7, v10

    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v12, ""

    if-ge v11, v5, :cond_0

    invoke-static {v1, v11}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int v13, v11, v10

    invoke-virtual {v1, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_0
    move-object v13, v12

    :goto_1
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v8, v0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_2
    iget-object v8, v0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    :cond_1
    :goto_3
    move/from16 v18, v5

    :goto_4
    move v7, v11

    goto/16 :goto_6

    :cond_2
    add-int v14, v11, v10

    if-ge v14, v5, :cond_3

    invoke-static {v1, v14}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int v15, v14, v10

    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_3
    move-object v15, v12

    :goto_5
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    const/4 v9, 0x2

    if-eqz v16, :cond_6

    new-array v14, v9, [Ljava/lang/String;

    aput-object v7, v14, v6

    const/16 v16, 0x1

    aput-object v13, v14, v16

    invoke-static {v14}, Lmiui/text/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v9, v0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v7, v0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    add-int/2addr v11, v10

    goto :goto_3

    :cond_4
    iget-object v9, v0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v6

    const/4 v10, 0x1

    aput-object v13, v9, v10

    const/4 v14, 0x2

    aput-object v15, v9, v14

    const/4 v14, 0x3

    new-array v1, v14, [Ljava/lang/String;

    aput-object v7, v1, v6

    aput-object v13, v1, v10

    const/4 v7, 0x2

    aput-object v15, v1, v7

    invoke-static {v1}, Lmiui/text/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/text/HindiPinyinConverter;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v14

    const-string v1, "Ignore unknown hindi: %s%s%s %s"

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v1, v9

    new-array v9, v1, [Ljava/lang/String;

    aput-object v7, v9, v6

    const/16 v17, 0x1

    aput-object v13, v9, v17

    invoke-static {v9}, Lmiui/text/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move/from16 v18, v5

    new-array v5, v1, [Ljava/lang/String;

    aput-object v9, v5, v6

    aput-object v15, v5, v17

    invoke-static {v5}, Lmiui/text/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Lmiui/text/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    add-int/2addr v14, v10

    move v7, v14

    goto :goto_6

    :cond_7
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    add-int/2addr v11, v10

    goto/16 :goto_4

    :cond_8
    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lmiui/text/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    goto/16 :goto_4

    :cond_9
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v6

    const/4 v5, 0x1

    aput-object v13, v1, v5

    const/4 v9, 0x2

    aput-object v15, v1, v9

    const/4 v10, 0x3

    new-array v14, v10, [Ljava/lang/String;

    aput-object v7, v14, v6

    aput-object v13, v14, v5

    aput-object v15, v14, v9

    invoke-static {v14}, Lmiui/text/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/text/HindiPinyinConverter;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    const-string v5, "Ignore unknown hindi: \'%s%s%s\' \'%s\'"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :goto_6
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    move/from16 v5, v18

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmiui/text/HindiPinyinConverter;->sStringBuilder:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v1, v4}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "hindiToPinyin(): using time %d ms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public hindiToPinyins(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    sget-object v0, Lmiui/text/HindiPinyinConverter;->sArrayList:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmiui/text/HindiPinyinConverter;->hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "ee"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ii"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "oo"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "uu"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p1, "v"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "w"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object p0, Lmiui/text/HindiPinyinConverter;->sArrayList:Lmiui/util/Pools$SimplePool;

    invoke-virtual {p0}, Lmiui/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "aa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    sget-object v1, Lmiui/text/HindiPinyinConverter;->sArrayList:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    sget-object v0, Lmiui/text/HindiPinyinConverter;->sArrayList:Lmiui/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Lmiui/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object p1
.end method
