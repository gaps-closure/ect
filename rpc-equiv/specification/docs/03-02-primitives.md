## Primitives and aliases

The following aliases are used in our information model.

==TODO== (Section 3.3).

```
MuxTag :: int
SecTag :: int
TypTag :: int
GTag :: (MuxTag, SecTag, TypTag)
```

An Enclave is a name for a set of devices operating in a closed network at the same security level. A Level is a name given to a security level for an application endpoint, which is used to specify what data the endpoint can receive from which other endpoints, and across which communication channels.

```
Enclave :: string
Level :: string
```

==TODO==

```
DataType :: string
Status :: int
RequestID :: int
ResponseID :: int
Timestamp :: int
```

==TODO== (Section 3.4).

```
AppEndpt :: URI
DevType :: string
FHdl :: int
TagDev :: (GTag, Device)
```