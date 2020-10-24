.class public Lcom/ss/android/ugc/effectmanager/common/utils/GenericsUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSuperClassGenericType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ss/android/ugc/effectmanager/common/utils/GenericsUtils;->getSuperClassGenericType(Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperClassGenericType(Ljava/lang/Class;I)Ljava/lang/Class;
    .locals 2

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v1, p0

    if-ge p1, v1, :cond_3

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    aget-object v1, p0, p1

    instance-of v1, v1, Ljava/lang/Class;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method
