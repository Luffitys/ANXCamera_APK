.class public final enum Landroid/util/Xml$Encoding;
.super Ljava/lang/Enum;
.source "Xml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Xml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/Xml$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/Xml$Encoding;

.field public static final enum ISO_8859_1:Landroid/util/Xml$Encoding;

.field public static final enum US_ASCII:Landroid/util/Xml$Encoding;

.field public static final enum UTF_16:Landroid/util/Xml$Encoding;

.field public static final enum UTF_8:Landroid/util/Xml$Encoding;


# instance fields
.field final expatName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroid/util/Xml$Encoding;

    const-string v1, "US_ASCII"

    const/4 v2, 0x0

    const-string v3, "US-ASCII"

    invoke-direct {v0, v1, v2, v3}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/util/Xml$Encoding;->US_ASCII:Landroid/util/Xml$Encoding;

    new-instance v0, Landroid/util/Xml$Encoding;

    const-string v1, "UTF_8"

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v3, v4}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    new-instance v0, Landroid/util/Xml$Encoding;

    const-string v1, "UTF_16"

    const/4 v4, 0x2

    const-string v5, "UTF-16"

    invoke-direct {v0, v1, v4, v5}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/util/Xml$Encoding;->UTF_16:Landroid/util/Xml$Encoding;

    new-instance v0, Landroid/util/Xml$Encoding;

    const-string v1, "ISO_8859_1"

    const/4 v5, 0x3

    const-string v6, "ISO-8859-1"

    invoke-direct {v0, v1, v5, v6}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/util/Xml$Encoding;->ISO_8859_1:Landroid/util/Xml$Encoding;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/util/Xml$Encoding;

    sget-object v6, Landroid/util/Xml$Encoding;->US_ASCII:Landroid/util/Xml$Encoding;

    aput-object v6, v1, v2

    sget-object v2, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    aput-object v2, v1, v3

    sget-object v2, Landroid/util/Xml$Encoding;->UTF_16:Landroid/util/Xml$Encoding;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Landroid/util/Xml$Encoding;->$VALUES:[Landroid/util/Xml$Encoding;

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

    iput-object p3, p0, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/Xml$Encoding;
    .registers 2

    const-class v0, Landroid/util/Xml$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/Xml$Encoding;

    return-object v0
.end method

.method public static values()[Landroid/util/Xml$Encoding;
    .registers 1

    sget-object v0, Landroid/util/Xml$Encoding;->$VALUES:[Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, [Landroid/util/Xml$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Xml$Encoding;

    return-object v0
.end method
