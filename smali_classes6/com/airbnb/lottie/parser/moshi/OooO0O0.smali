.class public abstract Lcom/airbnb/lottie/parser/moshi/OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final OooO0oO:[Ljava/lang/String;


# instance fields
.field OooO00o:I

.field OooO0O0:[I

.field OooO0OO:[Ljava/lang/String;

.field OooO0Oo:[I

.field OooO0o:Z

.field OooO0o0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0oO:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0oO:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "\\u%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0oO:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0O0:[I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0OO:[Ljava/lang/String;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0Oo:[I

    return-void
.end method

.method static synthetic OooO00o(Lokio/BufferedSink;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooOOoo(Lokio/BufferedSink;Ljava/lang/String;)V

    return-void
.end method

.method public static OooOOO0(Lokio/BufferedSource;)Lcom/airbnb/lottie/parser/moshi/OooO0O0;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/OooO0Oo;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/OooO0Oo;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method private static OooOOoo(Lokio/BufferedSink;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0oO:[Ljava/lang/String;

    const/16 v1, 0x22

    invoke-interface {p0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    aget-object v5, v0, v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_0
    const/16 v6, 0x2028

    if-ne v5, v6, :cond_1

    const-string v5, "\\u2028"

    goto :goto_1

    :cond_1
    const/16 v6, 0x2029

    if-ne v5, v6, :cond_4

    const-string v5, "\\u2029"

    :cond_2
    :goto_1
    if-ge v4, v3, :cond_3

    invoke-interface {p0, p1, v4, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    :cond_3
    invoke-interface {p0, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v4, v3, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-ge v4, v2, :cond_6

    invoke-interface {p0, p1, v4, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    :cond_6
    invoke-interface {p0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-void
.end method


# virtual methods
.method public abstract OooO()D
.end method

.method public abstract OooO0O0()V
.end method

.method public abstract OooO0OO()V
.end method

.method public abstract OooO0Oo()V
.end method

.method public final OooO0o()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO00o:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0O0:[I

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0OO:[Ljava/lang/String;

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0Oo:[I

    invoke-static {v0, v1, v2, p0}, Lcom/airbnb/lottie/parser/moshi/OooO0OO;->OooO00o(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract OooO0o0()V
.end method

.method public abstract OooO0oO()Z
.end method

.method public abstract OooO0oo()Z
.end method

.method public abstract OooOO0()I
.end method

.method public abstract OooOO0O()Ljava/lang/String;
.end method

.method public abstract OooOO0o()Ljava/lang/String;
.end method

.method public abstract OooOOO()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
.end method

.method final OooOOOO(I)V
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO00o:I

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0O0:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    const/16 v2, 0x100

    if-eq v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0O0:[I

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0OO:[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0OO:[Ljava/lang/String;

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0Oo:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0Oo:[I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nesting too deep at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0O0:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO00o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO00o:I

    aput p1, v0, v1

    return-void
.end method

.method public abstract OooOOOo(Lcom/airbnb/lottie/parser/moshi/OooO00o;)I
.end method

.method public abstract OooOOo()V
.end method

.method public abstract OooOOo0()V
.end method

.method final OooOo00(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at path "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/OooO0O0;->OooO0o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
