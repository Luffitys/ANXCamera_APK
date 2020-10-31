.class Landroid/sax/Children;
.super Ljava/lang/Object;
.source "Children.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sax/Children$Child;
    }
.end annotation


# instance fields
.field children:[Landroid/sax/Children$Child;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Landroid/sax/Children$Child;

    iput-object v0, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    and-int/lit8 v1, v0, 0xf

    iget-object v2, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_15

    return-object v3

    :cond_15
    :goto_15
    iget v4, v2, Landroid/sax/Children$Child;->hash:I

    if-ne v4, v0, :cond_2a

    iget-object v4, v2, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2a

    iget-object v4, v2, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2a

    return-object v2

    :cond_2a
    iget-object v2, v2, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    if-nez v2, :cond_2f

    return-object v3

    :cond_2f
    goto :goto_15
.end method

.method getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .registers 15

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    and-int/lit8 v1, v0, 0xf

    iget-object v2, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object v8, v2, v1

    if-nez v8, :cond_26

    new-instance v9, Landroid/sax/Children$Child;

    iget v2, p1, Landroid/sax/Element;->depth:I

    add-int/lit8 v6, v2, 0x1

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, v0

    invoke-direct/range {v2 .. v7}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v3, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aput-object v2, v3, v1

    return-object v2

    :cond_26
    :goto_26
    iget v2, v8, Landroid/sax/Children$Child;->hash:I

    if-ne v2, v0, :cond_3b

    iget-object v2, v8, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3b

    iget-object v2, v8, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3b

    return-object v8

    :cond_3b
    move-object v9, v8

    iget-object v8, v8, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    if-nez v8, :cond_51

    new-instance v10, Landroid/sax/Children$Child;

    iget v2, p1, Landroid/sax/Element;->depth:I

    add-int/lit8 v6, v2, 0x1

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, v0

    invoke-direct/range {v2 .. v7}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v2, v9, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    return-object v2

    :cond_51
    goto :goto_26
.end method
