.class public Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OutsideCompoundDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static ATTR_DRAWABLE:I


# instance fields
.field private mBase:Landroid/graphics/drawable/Drawable;

.field private mBottom:Landroid/graphics/drawable/Drawable;

.field private mTop:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->ATTR_DRAWABLE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    sget v0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->ATTR_DRAWABLE:I

    if-nez v0, :cond_1c

    :try_start_7
    const-string v0, "com.android.internal.R$attr"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->ATTR_DRAWABLE:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    move-exception v0

    :cond_1c
    :goto_1c
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_15
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_12

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, -0x2

    :goto_13
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    if-eq v2, v1, :cond_a8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    if-ge v2, v0, :cond_17

    const/4 v2, 0x3

    if-eq v3, v2, :cond_a8

    :cond_17
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1b

    goto :goto_6

    :cond_1b
    if-le v4, v0, :cond_1e

    goto :goto_6

    :cond_1e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "item-top"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v6, 0x0

    goto :goto_40

    :cond_2d
    const-string v7, "item-base"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    const/4 v6, 0x1

    goto :goto_40

    :cond_37
    const-string v7, "item-bottom"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v6, 0x2

    :goto_40
    const/4 v7, 0x0

    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_46
    if-ge v9, v8, :cond_5c

    invoke-interface {p3, v9}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v10

    if-nez v10, :cond_4f

    goto :goto_5c

    :cond_4f
    sget v11, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->ATTR_DRAWABLE:I

    if-ne v10, v11, :cond_59

    const/4 v11, 0x0

    invoke-interface {p3, v9, v11}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v7

    goto :goto_5c

    :cond_59
    add-int/lit8 v9, v9, 0x1

    goto :goto_46

    :cond_5c
    :goto_5c
    if-eqz v7, :cond_63

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_72

    :cond_63
    :goto_63
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v3, v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_6c

    goto :goto_63

    :cond_6c
    if-ne v3, v2, :cond_8d

    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :goto_72
    if-eqz v10, :cond_8b

    if-nez v6, :cond_7c

    iput-object v10, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_8b

    :cond_7c
    if-ne v6, v1, :cond_84

    iput-object v10, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_8b

    :cond_84
    if-ne v6, v2, :cond_8b

    iput-object v10, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_8b
    :goto_8b
    goto/16 :goto_6

    :cond_8d
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a8
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    return-void
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_a
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_14
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_15
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_14

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    if-nez v1, :cond_12

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    move v1, v2

    goto :goto_13

    :cond_12
    :goto_12
    move v1, v3

    :goto_13
    move v0, v1

    :cond_14
    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_25

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    if-nez v1, :cond_23

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    move v1, v2

    goto :goto_24

    :cond_23
    :goto_23
    move v1, v3

    :goto_24
    move v0, v1

    :cond_25
    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_33

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    if-nez v1, :cond_31

    if-eqz v0, :cond_32

    :cond_31
    move v2, v3

    :cond_32
    move v0, v2

    :cond_33
    return v0
.end method

.method public onStateChange([I)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-nez v1, :cond_1a

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    move v1, v2

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v1, v3

    :goto_1b
    move v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-nez v1, :cond_33

    if-eqz v0, :cond_31

    goto :goto_33

    :cond_31
    move v1, v2

    goto :goto_34

    :cond_33
    :goto_33
    move v1, v3

    :goto_34
    move v0, v1

    :cond_35
    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-nez v1, :cond_49

    if-eqz v0, :cond_4a

    :cond_49
    move v2, v3

    :cond_4a
    move v0, v2

    :cond_4b
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_d
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_15
    return-void
.end method

.method public setBounds(IIII)V
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_a
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_15

    const/4 v0, 0x1

    :cond_15
    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v2, p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1c
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_27

    const/4 v0, 0x1

    :cond_27
    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBottom:Landroid/graphics/drawable/Drawable;

    add-int v2, p4, v0

    invoke-virtual {v1, p1, p4, p3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2e
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_15
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_7
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBase:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->mBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_15
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method
