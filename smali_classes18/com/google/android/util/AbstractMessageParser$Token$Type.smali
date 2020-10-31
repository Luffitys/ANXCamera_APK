.class public final enum Lcom/google/android/util/AbstractMessageParser$Token$Type;
.super Ljava/lang/Enum;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/util/AbstractMessageParser$Token$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;


# instance fields
.field private stringRep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "HTML"

    const/4 v2, 0x0

    const-string v3, "html"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "FORMAT"

    const/4 v3, 0x1

    const-string v4, "format"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "LINK"

    const/4 v4, 0x2

    const-string v5, "l"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "SMILEY"

    const/4 v5, 0x3

    const-string v6, "e"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "ACRONYM"

    const/4 v6, 0x4

    const-string v7, "a"

    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "MUSIC"

    const/4 v7, 0x5

    const-string v8, "m"

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "GOOGLE_VIDEO"

    const/4 v8, 0x6

    const-string v9, "v"

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "YOUTUBE_VIDEO"

    const/4 v9, 0x7

    const-string v10, "yt"

    invoke-direct {v0, v1, v9, v10}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "PHOTO"

    const/16 v10, 0x8

    const-string v11, "p"

    invoke-direct {v0, v1, v10, v11}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "FLICKR"

    const/16 v11, 0x9

    const-string v12, "f"

    invoke-direct {v0, v1, v11, v12}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/google/android/util/AbstractMessageParser$Token$Type;

    sget-object v12, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v12, v1, v2

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v2, v1, v8

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v2, v1, v9

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->$VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->stringRep:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .registers 2

    const-class v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .registers 1

    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->$VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v0}, [Lcom/google/android/util/AbstractMessageParser$Token$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->stringRep:Ljava/lang/String;

    return-object v0
.end method
