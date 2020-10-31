.class Lorg/apache/miui/commons/lang3/AnnotationUtils$1;
.super Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.source "AnnotationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/miui/commons/lang3/AnnotationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setDefaultFullDetail(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setArrayContentDetail(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setUseClassName(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setUseShortClassName(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setUseIdentityHashCode(Z)V

    const-string v0, "("

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setContentStart(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setContentEnd(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setFieldSeparator(Ljava/lang/String;)V

    const-string v0, "["

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setArrayStart(Ljava/lang/String;)V

    const-string v0, "]"

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils$1;->setArrayEnd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    instance-of v0, p3, Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_b

    move-object v0, p3

    check-cast v0, Ljava/lang/annotation/Annotation;

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/AnnotationUtils;->toString(Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object p3

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const-class v3, Ljava/lang/annotation/Annotation;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_20

    move-object v1, v2

    move-object v0, v1

    goto :goto_21

    :cond_20
    goto :goto_9

    :cond_21
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez v0, :cond_28

    const-string v2, ""

    goto :goto_2c

    :cond_28
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_2c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
